<template>
    <Navbar />
    <router-view v-slot="{ Component }">
        <transition name="fade" mode="out-in"
            ><component :is="Component" id="routerView" />
        </transition>
    </router-view>
</template>

<script>
import Navbar from "./components/Navbar/Navbar.vue";
export default {
    name: "App",
    components: {
        Navbar,
    },
};
</script>

<script></script>

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
