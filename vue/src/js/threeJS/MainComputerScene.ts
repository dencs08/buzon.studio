import * as THREE from "three";
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";
import { RGBELoader } from "three/examples/jsm/loaders/RGBELoader";

export default class MainComputerScene extends THREE.Scene {
    private readonly gltfLoader = new GLTFLoader();
    private readonly textureLoader = new THREE.TextureLoader();
    private readonly rgbeLoader = new RGBELoader();

    private assetsUrl = "../../src/assets/3d/";

    private hdrMap = new THREE.Texture();
    private sceneParticles?: THREE.Points;
    private scrollProgress?: string;
    private delta: number;
    private clock = new THREE.Clock();

    private cameraTargetLookAtVector = new THREE.Vector3();
    private cameraTargetPosObject = new THREE.Vector3(0, 0, 1.25);
    private cameraTargetZ = 1.25;
    private cursorObject = new THREE.Mesh();

    private readonly camera: THREE.PerspectiveCamera;

    private mouseVector2 = new THREE.Vector2(0, 0);
    private mousePos = new THREE.Vector2(0, 0);

    private navBtn;
    private isNavOpened: boolean = false;

    constructor(camera: THREE.PerspectiveCamera) {
        super();

        this.camera = camera;
    }

    async initialize() {
        const mainLight = new THREE.DirectionalLight(0xffffff, 1);
        mainLight.position.set(0, 0, 2);
        this.add(mainLight);

        this.hdrMap = await this.loadHDR("studio_small_09_1k.hdr");
        this.hdrMap.mapping = THREE.EquirectangularReflectionMapping;
        // this.environment = this.hdrMap;
        // this.background = this.hdrMap;

        this.fog = new THREE.Fog(0x111111, 0, 3);

        const bisonHead = await this.loadGLTF("bisonhead.gltf", 0x010f08);
        bisonHead.position.set(0, 0.05, -1.25);
        this.add(bisonHead);

        this.sceneParticles = await this.createEnviroParticles();
        this.add(this.sceneParticles);

        this.createCursorObject();

        this.mouseHandlers();
        this.navCamera();
        this.attachObserver(this.onNavClassChange);
        //TODO fullpage animations with scroll effects and story telling on /start
        // const modelArray = await this.loadGLTF("3d_logo_array.gltf", 0x060606);
        // const modelPC = await this.loadGLTF("3d_logo_monitor.gltf", 0x050505);
        // modelArray.position.set(0, 0, -35);
        // modelPC.position.set(0, 0, -35);
        // this.add(modelArray, modelPC);
    }

    update() {
        this.getScrollPos();
        this.animateParticles();

        this.delta = this.clock.getDelta();

        this.moveCursorObjects();
        this.cameraMove();
    }

    private async loadGLTF(name, color) {
        var promise = this.gltfLoader.loadAsync(
            this.assetsUrl + "/models/" + name
        );

        var result = await promise;
        var model = result.scene;

        var modelParams = {
            color: color,
            metalness: 0.5,
            roughness: 0.5,
            envMap: this.hdrMap,
            // clearcoat: 1.0,
            // clearcoatRoughness: 0.1,
            // reflectivity: 0,
            // normalMap: texture,
            // normalScale: new THREE.Vector2(0.15, 0.15),
        };

        var material = new THREE.MeshStandardMaterial(modelParams);

        model.traverse((o) => {
            if (o.isMesh) o.material = material;
        });

        return model;
    }

    private async loadHDR(name) {
        var promise = this.rgbeLoader.loadAsync(this.assetsUrl + name);
        var result = await promise;
        var hdr = result;

        return hdr;
    }

    private async createEnviroParticles() {
        var particleGeo = new THREE.BufferGeometry();
        var particleVerts: number[] = [];

        var promise = this.textureLoader.loadAsync(
            this.assetsUrl + "particle.png"
        );
        var result = await promise;
        var sprite = result;

        for (let i = 0; i < 2500; i++) {
            var x = Math.random() * (-2 - 1 + 1) + 1;
            var y = Math.random() * (-2 - 1 + 1) + 1;
            var z = Math.random() * (-5 - 2 + 1) + 2;

            particleVerts.push(x, y, z);
        }

        particleGeo.setAttribute(
            "position",
            new THREE.Float32BufferAttribute(particleVerts, 3)
        );
        var particleMat = new THREE.PointsMaterial({
            size: 0.01,
            sizeAttenuation: true,
            map: sprite,
            alphaTest: 0,
            transparent: true,
        });
        var particles = new THREE.Points(particleGeo, particleMat);

        return particles;
    }

    private getScrollPos() {
        this.scrollProgress = document.documentElement.getAttribute(
            "data-scroll-progress"
        )!;
    }

    private animateParticles() {
        var particleRotationSpeed = 200;

        // this.sceneParticles?.rotateX(0.1 / particleRotationSpeed);
        // this.sceneParticles?.rotateY(0.1 / particleRotationSpeed);
        this.sceneParticles?.rotateZ(0.1 / particleRotationSpeed);

        if (!this.sceneParticles) return;
        this.sceneParticles.position.z = this.lerp(
            this.sceneParticles.position.z,
            this.scrollProgress / 25,
            0.05
        );
    }

    private createCursorObject() {
        const cameraTargetGeo = new THREE.SphereGeometry(1, 32, 16);
        const invisibleMat = new THREE.MeshBasicMaterial({
            color: 0xffffff,
        });

        this.cursorObject = new THREE.Mesh(cameraTargetGeo, invisibleMat);
        this.cursorObject.position.copy(this.cameraTargetPosObject);
        this.add(this.cursorObject);
        this.cursorObject.scale.set(0.1, 0.1, 0.1);
        this.cursorObject.material.transparent = true;
        this.cursorObject.material.opacity = 0;
    }

    private mouseHandlers() {
        if (!window.matchMedia("(min-width: 1024px)").matches) return;
        document.addEventListener("mousemove", this.onMouseMove);
    }

    onMouseMove = (event: MouseEvent) => {
        this.mouseVector2.set(
            (event.clientX / window.innerWidth) * 2 - 1,
            -(event.clientY / window.innerHeight) * 2 + 1
        );

        var mouseScreenVector = new THREE.Vector2(
            -this.mouseVector2.x / 8,
            -this.mouseVector2.y / 14
        );
        this.mousePos.copy(mouseScreenVector);
    };

    onNavClassChange = () => {
        this.navCamera();
    };

    private moveCursorObjects() {
        this.cameraTargetPosObject.setZ(this.cameraTargetZ);

        if (this.isNavOpened) return;
        this.cursorObject.position.setX(this.mousePos.x);
        this.cursorObject.position.setY(this.mousePos.y);
        // this.cursorObject.position.z = 1.25;
        this.cameraTargetPosObject.setX(this.mousePos.x);
        this.cameraTargetPosObject.setY(this.mousePos.y);
    }

    private cameraMove() {
        let alpha = 0;
        alpha += this.delta * 2;

        this.camera.position.lerp(this.cameraTargetPosObject, alpha);
        this.camera.lookAt(this.cameraTargetLookAtVector);
    }

    private lerp(start, end, amt) {
        return (1 - amt) * start + amt * end;
    }

    private navCamera() {
        if (
            document.documentElement.getAttribute("data-nav-opened") === "true"
        ) {
            this.isNavOpened = true;

            if (window.matchMedia("(min-width: 1024px)").matches)
                (this.cameraTargetZ = 0.75),
                    this.cameraTargetPosObject.setX(0.35),
                    this.cameraTargetPosObject.setY(0);

            if (!window.matchMedia("(min-width: 1024px)").matches)
                (this.cameraTargetZ = 0.75),
                    this.cameraTargetPosObject.setX(0.225),
                    this.cameraTargetPosObject.setY(0);
        }
        if (
            document.documentElement.getAttribute("data-nav-opened") === "false"
        ) {
            this.isNavOpened = false;
            this.cameraTargetZ = 1.25;
        }
    }

    private attachObserver(eventToRun) {
        var e = document.documentElement;
        var observer = new MutationObserver(function (event) {
            eventToRun();
        });

        observer.observe(e, {
            attributes: true,
            attributeFilter: ["data-nav-opened"],
            childList: false,
            characterData: false,
        });
    }
}
