<template>
    <main>
        <ProjectHero :name="$route.params.projectName" />
        <ProjectInfo :info="this.project.descShort" :goals="this.project.goals"
            :responsibilities="this.project.responsibilities" :website="this.project.website" :image="this.imageInfo" />
        <ProjectImageShowcase :imageSlider1="this.imagesMain" :imageSlider2="this.imagesMain" />
        <ProjectMainDescription :text="this.project.descLong" :image="this.imageMainDesc" />
        <ProjectImages :name="$route.params.projectName" :images="this.imagesMain" />
        <ProjectContactUs />
        <a :href="nextProjectUrl">
            <ProjectNext :nextName="nextProject.name" :nextImage="nextProjectImg" />
        </a>
    </main>
</template>

<script>
import axiosClient from '../js/axios'

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

    data() {
        return { project: [], imageInfo: '', imagesSlider1: [], imagesSlider2: [], imageMainDesc: '', imagesMain: [], nextProject: [], nextProjectImg: '', nextProjectUrl: '' }
    },

    mounted() {
        this.getProject()
    },

    methods: {
        async getProject() {
            const [current, next] = await Promise.all([
                axiosClient.get('/api/project/' + this.$route.params.projectName),
                axiosClient.get('/api/project/next/' + this.$route.params.projectName),
            ]);

            this.project = current.data

            this.imageInfo = this.src(this.project.name, this.project.images[0]);
            this.imageMainDesc = this.src(this.project.name, this.project.images[1]);
            this.imagesSlider1 = this.project.images;

            for (let i = 0; i < this.project.images.length; i++) {
                const element = this.project.images[i];
                this.imagesMain.push(this.src(this.project.name, element));
            }

            this.nextProject = next.data;
            this.nextProjectImg = this.src(this.nextProject.name, this.nextProject.name + '_portfolio');
            this.nextProjectUrl = `../projekt/${this.nextProject.name}`;
        },

        src(project, imageName) {
            return `/src/assets/images/portfolio/${project}/${imageName}.jpg`;
        },
    }
};
</script>

<style>

</style>
