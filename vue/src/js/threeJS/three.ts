import gsap from "gsap";
import * as THREE from "three";

import MainComputerScene from "./MainComputerScene";

let scene, renderer;

const camera = new THREE.PerspectiveCamera(
    30,
    window.innerWidth / window.innerHeight,
    0.1,
    1000
);

export function threeInit() {
    scene = new MainComputerScene(camera);
    scene.initialize();

    renderer = new THREE.WebGLRenderer();
    renderer.setSize(window.innerWidth, window.innerHeight);
    renderer.setClearColor(0xffffff, 0);
    renderer.outputEncoding = THREE.sRGBEncoding;
    renderer.toneMapping = THREE.ACESFilmicToneMapping;
    renderer.toneMappingExposure = 1.8;

    const elementToAppend = document.getElementById("threeCanvas");
    if (elementToAppend) elementToAppend.appendChild(renderer.domElement);

    camera.position.z = 2;

    window.addEventListener("resize", onWindowResize);

    tick();
}

var tick = function () {
    renderer.render(scene, camera);
    requestAnimationFrame(tick);

    scene.update();
};

function onWindowResize() {
    var width = window.innerWidth;
    var height = window.innerHeight;

    camera.aspect = width / height;
    camera.updateProjectionMatrix();

    renderer.setSize(width, height);
}
