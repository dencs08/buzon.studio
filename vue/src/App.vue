<template>
    <LinkSkip />
    <Navbar />
    <Cursor ref="cursor" />
    <ThreeCanvas />

    <router-view v-slot="{ Component, route }">
        <div id="smoothScroll">
            <transition :name="route.meta.transition || 'fade'" mode="out-in" @leave="leave" @enter="enter">
                <component :is="Component" id="routerView" />
            </transition>
        </div>
    </router-view>
</template>

<script>
import { locoInit, locoDestroy } from './js/utilities/locomotiveScroll'
import { threeInit } from './js/threeJS/three.js'

import { Navbar, LinkSkip, Cursor, ThreeCanvas } from "./components";
export default {
    name: "App",

    components: {
        Navbar,
        Cursor,
        LinkSkip,
        ThreeCanvas,
    },

    mounted() {
        threeInit();
    },

    methods: {
        leave() {
            locoDestroy()
            this.$refs.cursor.restartCursor()
        },
        enter() {
            this.$refs.cursor.getCursorTriggers()
            locoInit(1)
        },
    }
};
</script>

<style lang="scss">
@import "./styles/app.scss";
@import "../node_modules/locomotive-scroll/dist/locomotive-scroll";

main {
    will-change: auto !important;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.3s ease-out;
}

.zoom-enter-from,
.zoom-leave-to {
    scale: 0.25;
    opacity: 0;
}

.zoom-enter-active,
.zoom-leave-active {
    transition: scale 0.5s ease-in-out 30s, opacity 0.25s ease-in-out 30s;
}
</style>
