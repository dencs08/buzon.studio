<template>
    <navbar />
    <main id="routerView">
        <router-view></router-view>
    </main>
</template>

<script>
import navbar from "./components/Navbar/Navbar.vue";
export default {
    components: {
        navbar,
    },
};
</script>

<style lang="scss">
@import "./styles/app.scss";
</style>
