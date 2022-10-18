<template>
    <main>
        <ProjectHero :name="$route.params.projectName" />
        <ProjectInfo />
        <ProjectImages :name="$route.params.projectName" :imagesCount="1" />
        <Footer />
    </main>
</template>

<script>
import { Footer, ProjectHero, ProjectInfo, ProjectImages } from "../containers";
export default {
    name: "Projekt",
    components: { Footer, ProjectHero, ProjectInfo, ProjectImages },
};
</script>

<style>

</style>
