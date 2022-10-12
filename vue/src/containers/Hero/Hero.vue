<template>
    <section id="hero" class="flex items-top mb-[25vh] overflow-hidden">
        <div class="container md:my-0">
            <h1 ref="h1" class=" mt-[14vh] kern-0">
                <div class="clip">
                    <div class="kern-0 translate-y-[120%] buzon">BUZON</div>
                </div>
                <div class="clip float-right">
                    <div class="kern-0 translate-y-[120%] studio mt-8">STUDIO</div>
                </div>
            </h1>

            <div class="mt-24 px-4">
                <h2 id="heroH2" ref="h2" class="fw-normal font-family-primary relative">
                    <LinkParagraph to="Oferta" @mouseover="$refs.link2.animationStart()"
                        @mouseleave="$refs.link2.handleMouseLeave()">
                        <span ref="span" :class="{'opacity-0' : isSplit}" class="font-color-darker duration-200 kern-0">
                            Tworzymy strony internetowe, wizualizacje, branding,
                            marketing online i inne produkty cyfrowe z pomocą
                            metody</span>
                        {{}}
                        <!-- <span
                        data-tooltip="Dzięki All-in-One zaosczędzisz czas i pieniądze, nie martw się o zatrudnianie kilku zespołów osobno - my realizujemy wszystko od A do Z."
                    > -->
                        <LinkPrimary id="linkHero" href="/oferta" text="All-in-One." :primary="true"
                            class="font-medium clip opacity-0" ref="link2" />
                        <!-- </span> -->
                    </LinkParagraph>
                </h2>
            </div>
            <!-- <x-arrow/> -->
        </div>
    </section>
</template>

<script>
import { LinkPrimary, LinkParagraph } from "../../components";
import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

import { splitToWords } from "../../js/cloneSplit";

export default {
    components: {
        LinkPrimary,
        LinkParagraph,
    },

    data() {
        return {
            isSplit: true,
        }
    },

    setup() {
        let h1, words;
        return {
            h1, words
        }
    },

    mounted() {
        this.h1 = this.$refs.h1;

        const elementToSplit = this.$refs.span
        splitToWords(elementToSplit);
        this.isSplit = false;
        this.words = document.querySelectorAll("#heroH2 .word")

        let tl = gsap.timeline({ defaults: { ease: "expo.out" } });
        tl.to(this.$refs.h1.children[0].children, { y: "0", delay: 1, })
            .to(this.$refs.h1.children[1].children, { y: "0", }, "<0.25")
            .to(this.words, { y: "0", stagger: 0.02 })
            .to(this.$refs.link2.$el, { opacity: "1", ease: "power2.in", onComplete: () => { this.scrollTriggerAnimations() } }, ">-0.5")
    },

    methods: {
        mouseOver() {
        },

        scrollTriggerAnimations() {
            gsap.registerPlugin(ScrollTrigger)

            let tlScroll = gsap.timeline({ defaults: { ease: "none" } })
                .to(this.$refs.h1.children[0], { x: "-120%", duration: 5 })
                .to(this.$refs.h1.children[1], { x: "120%", duration: 3.8 }, 0)
                .to(this.words, {
                    duration: 3, y: "-100%", stagger: 0.05,
                }, 0)
                .to(this.$refs.link2.$el.children, { y: "-110%", duration: 2.5 }, 0.8)

            ScrollTrigger.create({
                trigger: "#hero",
                start: "56% 50%",
                end: "+=1000",
                scroller: "main",
                animation: tlScroll,
                scrub: true,
                pin: true,
            })
        }
    },
};
</script>

<style lang="scss">
@import "./Hero.scss";
</style>
