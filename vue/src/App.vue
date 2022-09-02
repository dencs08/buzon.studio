<script>
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
import navbar from "./components/Navbar/Navbar.vue";
export default {
    components: {
        navbar, // register component
    },
};
import "./css/app.css";
</script>

<template>
    <navbar />
    <router-view></router-view>
</template>

<style scoped></style>
