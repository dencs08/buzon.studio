<template>
    <main>
        <ProjectHero :name="$route.params.projectName" />
        <ProjectInfo
            info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum officiis modi, odit quod quisquam voluptatum, obcaecati."
            :goals="['goal1', 'goal2', 'goal1', 'goal2', 'goal1', 'goal2']"
            :responsibilities="['responsibilites1', 'responsibilites1', 'responsibilites1', 'responsibilites1']"
            website="www.bielanypark.pl" />
        <ProjectImageShowcase :name="$route.params.projectName" />
        <ProjectMainDescription />
        <ProjectImages :name="$route.params.projectName" :imagesCount="1" />
        <ProjectContactUs />
        <ProjectNext />
    </main>
</template>

<script>
import {
    ProjectHero,
    ProjectInfo,
    ProjectImages,
    ProjectImageShowcase,
    ProjectMainDescription,
    ProjectContactUs,
    ProjectNext,
} from "../containers";
export default {
    name: "Projekt",
    components: {
        ProjectHero,
        ProjectInfo,
        ProjectImages,
        ProjectImageShowcase,
        ProjectMainDescription,
        ProjectContactUs,
        ProjectNext,
    },
};
</script>

<style>

</style>
