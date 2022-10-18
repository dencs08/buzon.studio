<template>
    <section id="portfolio" class="overflow-hidden relative">
        <div id="portfolio-content" class="container mt-5">
            <h3 ref="header" class="mb-5 uppercase font-bold sectionHeader absolute top-[-15%] z-[-1]">Projekty</h3>
        </div>
        <OurWorksSlider ref="ourWorksSlider" />
        <div class="portfolio-container container">
            <LinkPrimary to="Portfolio" text="Więcej prac" :primary="true" :point="true" class="my-4 uppercase" />
        </div>
    </section>
</template>

<script>
import { LinkPrimary, SectionHeader, OurWorksSlider } from "../../components";

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

export default {
    components: {
        OurWorksSlider,
        LinkPrimary,
        SectionHeader,
    },

    mounted() {
        let tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true })
            .fromTo(this.$refs.header, { x: 0 }, { x: "-110%", duration: 20 })
            .to(this.$refs.header, { color: "#555", duration: 5 }, ">-7")
            .fromTo(this.$refs.ourWorksSlider.$el, { x: '101%' }, { x: "-200%", duration: 17 }, 10)

        setTimeout(() => {
            if (!window.matchMedia("(min-width: 1024px)").matches) return;
            gsap.registerPlugin(ScrollTrigger)
            ScrollTrigger.create({
                trigger: "#portfolio",
                start: "40% 50%",
                end: "+=5000",
                scroller: "#smoothScroll",
                animation: tlScroll,
                scrub: true,
                pin: true,
            })
        }, 100);
    },
};
</script>

<style lang="scss" scoped>
@import "./ourworks.scss";
</style>
