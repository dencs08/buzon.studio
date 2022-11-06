<template>
    <section ref="section" id="aboutUs">
        <div class="container w-11/12 grid content-center text-center w-screen h-[30vh] lg:h-screen">
            <p class="font-color-dark" ref="text">
                <b class="uppercase font-bold">{{ name }}</b> to 5 lat
                doświadczenia w tworzeniu projektów i pomaganiu markom w
                optymalizacji ich działań marketingowych.

                <LinkPrimary to="Kontakt" text="Stwórzmy coś razem!" :primary="true" class="font-medium" />
            </p>
        </div>
    </section>
</template>

<script>
import { scrubTextReveal } from '../../js/textReveal'
let name = import.meta.env.VITE_NAME;


import { splitToLines } from "../../js/cloneSplit"

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'
import LinkPrimary from '../../components/CallToAction/Links/LinkPrimary/LinkPrimary.vue';

export default {
    components: { LinkPrimary },
    data() {
        return {
            name: name,
        };
    },
    mounted() {
        let text = this.$refs.text;
        let section = this.$refs.section;
        // setTimeout(() => {
        //     scrubTextReveal(text, this.$refs.section)
        // }, 1000);\

        setTimeout(() => {
            if (!window.matchMedia("(min-width: 1024px)").matches) return;

            splitToLines(text);
            let lines = text.querySelectorAll(".line");
            gsap.registerPlugin(ScrollTrigger);
            let tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true });
            tlScroll
                .fromTo(lines, { y: "100%" }, { y: "0%", duration: 1, stagger: 0.05 })
                .to(lines, { y: "0", duration: 0.75, stagger: 0.05 })
                .to(lines, { y: "-100%", duration: 1, stagger: 0.05 });
            ScrollTrigger.create({
                trigger: section,
                start: "50% 50%",
                end: "+=1500",
                scroller: "#smoothScroll",
                animation: tlScroll,
                scrub: 1,
                pin: true,
            });
        }, 100);
    },
};
</script>

<style lang="scss" scoped>
@import "./aboutus.scss";
</style>
