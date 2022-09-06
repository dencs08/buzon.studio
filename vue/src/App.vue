<script>
import navbar from "./components/Navbar/Navbar.vue";
export default {
    components: {
        navbar,
    },
};
import "./styles/app.scss";
</script>

<template>
    <navbar />
    <router-view></router-view>
</template>

<style scoped></style>
