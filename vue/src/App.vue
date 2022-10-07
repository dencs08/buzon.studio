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
        },
        enter() {
            this.$refs.cursor.getCursorTriggers()
        }
    }
};
</script>

<style lang="scss">
@import "./styles/app.scss";

main {
    will-change: transform, opacity;
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
