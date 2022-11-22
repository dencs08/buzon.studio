<template>
    <section id="portfolio" class="overflow-hidden relative">
        <div class="min-h-[90vh] lg:h-[100vh] flex items-center">
            <div id="portfolio-content" class="container">
                <h3 ref="header"
                    class="hidden lg:block uppercase font-bold sectionHeader font-family-header lg:absolute lg:top-[52%] lg:translate-y-[-50%] z-[-1]">
                    Projekty
                </h3>
                <div class="">
                    <OurWorksSlider ref="ourWorksSlider" class="" />
                </div>

                <LinkPrimary ref="portfolioLink" to="Portfolio" text="Więcej prac" :primary="true" :point="true"
                    class="uppercase portfolio-link lg:absolute lg:bottom-[2%] mt-6 lg:mt-0 reveal" />
            </div>
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
        setTimeout(() => {
            if (!window.matchMedia("(min-width: 1024px)").matches) return;

            let tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true })
                .fromTo(this.$refs.header, { x: 0 }, { x: "-101%", duration: 7, ease: "sine.out" })
                .to(this.$refs.header, { color: "#777777", duration: 4 }, "<3")
                .fromTo(this.$refs.portfolioLink.$el, { opacity: 0 }, { opacity: 1, duration: 1 }, ">-1")

            gsap.registerPlugin(ScrollTrigger)
            ScrollTrigger.create({
                trigger: "#portfolio",
                start: "50% 50%",
                end: "+=5000",
                scroller: "#smoothScroll",
                animation: tlScroll,
                scrub: true,
                pin: true,
            })
        }, 100);

        if (window.matchMedia("(max-width: 1024px)").matches) setTimeout(() => { gsap.to(this.$refs.portfolioLink.$el, { autoAlpha: 1, opacity: 1 }); }, 500);
    },
};
</script>

<style lang="scss" scoped>
@import "./ourworks.scss";

@media screen and (max-width: 1024px) {
    .reveal {
        visibility: hidden;
    }
}
</style>
