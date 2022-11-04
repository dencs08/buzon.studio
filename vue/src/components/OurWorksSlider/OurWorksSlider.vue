<template>
    <div class="bg-transparent font-color-primary p-0">
        <div ref="ourWorksSlider" class="whitespace-nowrap bg-transparent">
            <SliderItem v-for="project in this.projects" :title="project.name" :info="project.descShort"
                :category="project.categories" />
        </div>
    </div>
</template>

<script>
import axiosClient from '../../js/axios'

import { SliderItem } from '../'

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

export default {
    components: {
        SliderItem
    },

    data() {
        return { projects: [] }
    },

    mounted() {
        this.getProjects()
    },

    methods: {
        getProjects() {
            axiosClient.get('/api/projects/best')
                .then(response => {
                    response.data.length = 5;
                    this.projects = response.data
                    this.scrollTrigger()
                })
                .catch(error => {
                    console.log(error);
                })
        },

        scrollTrigger() {
            if (!window.matchMedia("(min-width: 1024px)").matches) return;

            let tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true })
                .fromTo(this.$refs.ourWorksSlider, { x: '125%' }, { x: "-70%", duration: 8 })

            gsap.registerPlugin(ScrollTrigger)
            ScrollTrigger.create({
                trigger: "#portfolio",
                start: "50% 50%",
                end: "+=5000",
                scroller: "#smoothScroll",
                animation: tlScroll,
                scrub: true,
            })
        }
    }
}
</script>

<style lang="scss" scoped>
@import './ourworksslider.scss';
</style>
