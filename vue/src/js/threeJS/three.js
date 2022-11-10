import gsap from 'gsap'
import * as THREE from 'three'

var cube, renderer, scene, camera;
export function threeInit() {
    scene = new THREE.Scene();
    camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);

    renderer = new THREE.WebGLRenderer();
    renderer.setSize(window.innerWidth, window.innerHeight);
    renderer.setClearColor(0xffffff, 0);

    let elementToAppend = document.getElementById("threeCanvas");
    elementToAppend.appendChild(renderer.domElement);

    var geometry = new THREE.BoxGeometry(1, 1, 1);
    var material = new THREE.MeshBasicMaterial({ color: 0x222222 });
    cube = new THREE.Mesh(geometry, material);
    scene.add(cube);

    camera.position.z = 5;

    animate();
}

var animate = function () {
    requestAnimationFrame(animate);

    cube.rotation.x += 0.01;
    cube.rotation.y += 0.01;

    renderer.render(scene, camera);
};

// animation

// function animation(time) {

//     mesh.rotation.x = time / 2000;
//     mesh.rotation.y = time / 1000;

//     renderer.render(scene, camera);

// }