<template>
    <main>
        <ProjectHero :name="$route.params.projectName" :image="image" />
        <ProjectInfo />
        <ProjectImages />
        <Footer />
    </main>
</template>

<script>
import { Footer, ProjectHero, ProjectInfo, ProjectImages } from "../containers";
export default {
    name: "Projekt",
    components: { Footer, ProjectHero, ProjectInfo, ProjectImages },
    computed: {
        image() {
            return `../src/assets/images/portfolio/${this.$route.params.projectName}/${this.$route.params.projectName}_portfolio.jpg`;
        },
    },
};
</script>

<style></style>
