<template>
    <LinkSkip />
    <Navbar />
    <Cursor ref="cursor" />
    <router-view v-slot="{ Component }">
        <transition name="fade" mode="out-in" @leave="leave" @enter="enter">
            <component :is="Component" id="routerView" />
        </transition>
    </router-view>
</template>

<script>
import { locoInit, locoDestroy } from './js/utilities/locomotiveScroll'

import { Navbar, LinkSkip, Cursor } from "./components";
export default {
    name: "App",

    components: {
        Navbar,
        Cursor,
        LinkSkip,
    },
    methods: {
        leave() {
            this.$refs.cursor.restartCursor()
            locoDestroy()
        },
        enter() {
            this.$refs.cursor.getCursorTriggers()
            locoInit(100)
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
</style>
