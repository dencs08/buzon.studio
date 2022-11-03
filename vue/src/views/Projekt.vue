<template>
    <main>
        <ProjectHero :name="$route.params.projectName" />
        <ProjectInfo
            info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum officiis modi, odit quod quisquam voluptatum, obcaecati."
            :goals="['goal1', 'goal2', 'goal1', 'goal2', 'goal1', 'goal2']"
            :responsibilities="['responsibilites1', 'responsibilites1', 'responsibilites1', 'responsibilites1']"
            website="https://bielanypark.pl/" />
        <ProjectImageShowcase :imageSlider1="[]" :imageSlider2="[]" />
        <ProjectMainDescription text="" image="" />
        <ProjectImages :name="$route.params.projectName" :images="['test', 'test', 'test', 'test']" />
        <ProjectContactUs />
        <ProjectNext nextName="" nextImage="" />
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
