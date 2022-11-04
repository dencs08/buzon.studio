<template>
    <div ref="wrapper" class="lg:h-[60vh] relative mb-[11vw]">
        <div ref="grid" class="lg:absolute lg:grid grid-cols-3">
            <PortfolioColumn v-for="project in this.projects" :projects="project" />
        </div>
    </div>
</template>

<script>
import axiosClient from '../../js/axios'

import { PortfolioColumn, PortfolioItem } from '../../components'

import gsap from 'gsap';
import ScrollTrigger from 'gsap/ScrollTrigger'

export default {
    components: {
        PortfolioColumn,
        PortfolioItem,
    },

    data() {
        return { projects: [] }
    },

    mounted() {
        this.getProjects();
    },

    methods: {
        async getProjects() {
            const [first, second, third] = await Promise.all([
                axiosClient.get('/api/projects/best'),
                axiosClient.get('/api/projects/best'),
                axiosClient.get('/api/projects/best'),
            ]);


            this.projects.push(first.data.slice(0, 3))
            this.projects.push(second.data.slice(3, 7))
            this.projects.push(third.data.slice(7, 10))

            this.projects[1][0].long = true
            this.projects[1][1].long = true
            this.projects[1][2].long = true
            this.projects[1][3].long = true

            this.scrollTrigger();
        },

        scrollTrigger() {
            if (!window.matchMedia("(min-width: 1024px)").matches) return;
            setTimeout(() => {
                gsap.registerPlugin(ScrollTrigger)
                let tlScroll;
                tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true });
                tlScroll
                    .to(this.$refs.grid.children[0], { y: "-50%", duration: 3 })
                    .to(this.$refs.grid.children[1], { y: "-81%", duration: 3 }, "<")
                    .to(this.$refs.grid.children[2], { y: "-50%", duration: 3 }, "<")

                ScrollTrigger.create({
                    trigger: this.$refs.wrapper,
                    start: "180% 100%",
                    end: "+=1500",
                    scroller: "#smoothScroll",
                    animation: tlScroll,
                    scrub: true,
                    pin: true,
                })
            }, 100);
        }

    }
}
</script>
<style lang="">
    
</style>