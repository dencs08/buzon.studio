<template>
    <section id="hero" class="flex items-top overflow-hidden">
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
                        <span ref="span" :class="{'opacity-0' : isSplit}"
                            class="font-color-darker duration-200 kern-0 mr-2">
                            Tworzymy strony internetowe, wizualizacje, logo,
                            marketing online i inne produkty cyfrowe z pomocą metody</span>
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

import { splitToLines } from "../../js/cloneSplit";

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
        let h1, lines, tlScroll;
        return {
            h1, lines, tlScroll
        }
    },

    mounted() {
        this.h1 = this.$refs.h1;

        const span = this.$refs.span
        splitToLines(span);
        this.isSplit = false;
        this.lines = document.querySelectorAll("#heroH2 .line")

        let tl = gsap.timeline({ defaults: { ease: "expo.out" } });
        tl.to(this.$refs.h1.children[0].children, { y: "0", delay: 1, })
            .to(this.$refs.h1.children[1].children, { y: "0", }, "<0.25")
            .to(this.lines, { y: "0", stagger: 0.02, onComplete: () => { this.scrollTriggerLines() } })
            .to(this.$refs.link2.$el, { opacity: "1", ease: "power2.in" }, ">-0.5")


        setTimeout(() => {
            this.scrollTriggerAnimations()
        }, 50);
    },

    methods: {
        mouseOver() {
        },

        scrollTriggerAnimations() {
            gsap.registerPlugin(ScrollTrigger)

            this.tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true });
            this.tlScroll
                .to(this.$refs.h1.children[0], { x: "-75%", duration: 3, delay: 0.25, })
                .to(this.$refs.h1.children[1], { x: "110%", duration: 3 }, "<")

            ScrollTrigger.create({
                trigger: "#hero",
                start: "50% 50%",
                end: "+=1000",
                scroller: "#smoothScroll",
                animation: this.tlScroll,
                scrub: true,
                pin: true,
            })
        },

        //separate function for adding .words into scrub timeline of hero section 
        //(otherwise .words would jump to the end of the animation or start from the initial position if used fromTo())
        //TODO make better solution for this...
        scrollTriggerLines() {
            this.tlScroll
                .to(this.lines, { duration: 2, y: "-100%", }, 1)
                .to(this.$refs.link2.$el.children, { y: "-110%", duration: 2 }, "<")
        }
    },
};
</script>

<style lang="scss">
@import "./Hero.scss";
</style>
