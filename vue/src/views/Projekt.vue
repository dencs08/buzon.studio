<template>
    <main>
        <ProjectHero :name="$route.params.projectName" />
        <ProjectInfo :info="this.project.descShort" :goals="this.project.goals"
            :responsibilities="this.project.responsibilities" :website="this.project.website" :image="this.imageInfo" />
        <ProjectImageShowcase :imageSlider1="this.imagesSlider1" :imageSlider2="this.imagesSlider2" />
        <ProjectMainDescription :text="this.project.descLong" :image="this.imageMainDesc" />
        <ProjectImages :name="$route.params.projectName" :images="this.imagesGrid" />
        <div class="bg">
            <ProjectContactUs />
            <a :href="nextProjectUrl">
                <ProjectNext :nextName="nextProject.name" :nextImage="nextProjectImg" />
            </a>
        </div>
    </main>
</template>

<script>
import axiosClient from '../js/axios'
import { scrollTriggerUpdate, locoStart } from '../js/utilities/locomotiveScroll'
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
        return { project: [], imageInfo: '', imagesSlider1: [], imagesSlider2: [], imageMainDesc: '', imagesMain: [], imagesGrid: [], nextProject: [], nextProjectImg: '', nextProjectUrl: '' }
    },

    mounted() {
        this.getProject().then(response =>
            scrollTriggerUpdate(100),
            locoStart(850)
        )
    },

    methods: {
        async getProject() {
            const [current, next] = await Promise.all([
                axiosClient.get('/project/' + this.$route.params.projectName),
                axiosClient.get('/project/next/' + this.$route.params.projectName),
            ]);

            this.project = current.data

            this.imageInfo = this.src(this.project.name, this.project.images[0]);
            this.imageMainDesc = this.src(this.project.name, this.project.images[1]);

            for (let i = 0; i < this.project.images.length; i++) {
                const element = this.project.images[i];
                this.imagesMain.push(this.src(this.project.name, element));
            }

            this.imagesSlider1 = this.imagesMain.slice(1);
            this.imagesSlider1.length >= 4 ? this.imagesSlider1.length = 4 : this.imagesSlider1.length = 0;

            this.imagesSlider2 = this.imagesMain.slice(5);
            this.imagesSlider2.length >= 4 ? this.imagesSlider2.length = 4 : this.imagesSlider2.length = 0;

            this.imagesGrid = this.imagesMain.slice(2).reverse();

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
