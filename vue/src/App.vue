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
import LocomotiveScroll from "locomotive-scroll";

import { Navbar, LinkSkip, Cursor } from "./components";
export default {
    name: "App",

    setup() {
        let locoScroll;

        return { locoScroll }
    },

    components: {
        Navbar,
        Cursor,
        LinkSkip,
    },
    methods: {
        leave() {
            this.$refs.cursor.restartCursor()
            this.locoDestroy()
        },
        enter() {
            this.$refs.cursor.getCursorTriggers()
            this.locoInit()
        },
        locoInit() {
            setTimeout(() => {
                this.locoScroll = new LocomotiveScroll({
                    el: document.querySelector("main"),
                    smooth: true,
                    multiplier: 1,
                    lerp: 0.135,
                    getDirection: true,
                    reloadOnContextChange: true,
                    smartphone: {
                        smooth: true
                    },
                    tablet: {
                        smooth: true
                    }
                });

                this.locoScroll.on("scroll", (args) => {
                    document.documentElement.setAttribute('data-direction', args.direction)
                })
            }, 300);
        },
        locoDestroy() {
            this.locoScroll.destroy();
            this.locoScroll = null;
            console.log("Kill", this.locoScroll);
        }
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
