<template>
    <navbar />
    <router-view></router-view>
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
