import gsap from 'gsap'
import * as THREE from 'three'

import { GLTFLoader } from 'three/examples/jsm/loaders/GLTFLoader.js'

const gltfLoader = new GLTFLoader()

var logo, renderer, scene, camera;
export function threeInit() {
    scene = new THREE.Scene();
    camera = new THREE.PerspectiveCamera(1, window.innerWidth / window.innerHeight, 0.1, 1000);

    renderer = new THREE.WebGLRenderer();
    renderer.setSize(window.innerWidth, window.innerHeight);
    renderer.setClearColor(0xffffff, 0);

    let elementToAppend = document.getElementById("threeCanvas");
    elementToAppend.appendChild(renderer.domElement);

    camera.position.z = 0;

    loadModel('3d_logo_array.gltf', 0x111111, -35);
    loadModel('3d_logo_monitor.gltf', 0x161616, -35);

    animate();
}

var animate = function (time) {
    requestAnimationFrame(animate);

    animateCamera(getScrollPos())

    renderer.render(scene, camera);
};

var loadModel = function (name, color, zPos) {
    gltfLoader.load(`../../src/assets/3d/models/${name}`, function (gltf) {
        var material = new THREE.MeshBasicMaterial({ color: color });

        let model = gltf.scene;
        model.traverse((o) => {
            if (o.isMesh) o.material = material;
        });
        model.position.z = zPos;
        scene.add(model);
    }, undefined, function (error) {
        console.error(error);
    });
}

let scrollProgress;
var getScrollPos = function () {
    scrollProgress = document.documentElement.getAttribute('data-scroll-progress');

    return scrollProgress;
}

function animateCamera(scrollProgress) {
    camera.position.z = lerp(camera.position.z, scrollProgress * 2, 0.1);
    // camera.fov = scrollProgress;
    // camera.updateProjectionMatrix();
}

function lerp(start, end, amt) {
    return (1 - amt) * start + amt * end
}