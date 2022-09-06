<template>
    <ProjectHero :name="$route.params.name" :image="image" />
    <ProjectInfo />
    <ProjectImages />
    <Footer />
</template>

<script>
import { Footer, ProjectHero, ProjectInfo, ProjectImages } from "../containers";
export default {
    name: "Projekt",
    components: { Footer, ProjectHero, ProjectInfo, ProjectImages },
    computed: {
        image() {
            return `../src/assets/images/portfolio/${this.$route.params.name}/${this.$route.params.name}_portfolio.jpg`;
        },
    },
};
</script>

<style></style>
