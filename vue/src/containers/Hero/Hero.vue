<template>
    <section data-scroll-section id="landing-page" class="flex items-top">
        <div class="container md:my-0">
            <h1 ref="h1" class=" mt-[14vh]">
                <div>
                    BUZON
                </div>
                <div class="float-right">STUDIO
                </div>
            </h1>

            <div class="w-1/3 mt-24 px-4">
                <h2 class="fw-normal font-family-primary relative">
                    <LinkParagraph to="Oferta" @mouseover="$refs.link2.animationStart()"
                        @mouseleave="$refs.link2.handleMouseLeave()">
                        <span class="font-color-darker duration-200">
                            Tworzymy strony internetowe, wizualizacje, branding,
                            marketing online i inne produkty cyfrowe z pomocą
                            metody</span>
                        {{}}
                        <!-- <span
                        data-tooltip="Dzięki All-in-One zaosczędzisz czas i pieniądze, nie martw się o zatrudnianie kilku zespołów osobno - my realizujemy wszystko od A do Z."
                    > -->
                        <LinkPrimary href="/oferta" text="All-in-One." :primary="true" class="font-medium"
                            ref="link2" />
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
export default {
    components: {
        LinkPrimary,
        LinkParagraph,
    },

    setup() {
        let h1;
        return {
            h1
        }
    },

    mounted() {
        this.h1 = this.$refs.h1;
        gsap.registerPlugin(ScrollTrigger);

        setTimeout(() => {
            gsap
                .timeline({
                    scrollTrigger: {
                        trigger: "#landing-page",
                        // scroller: "main",
                        scrub: 1,
                        start: "top -10%",
                        end: "top -1000px",
                        pin: true,
                        markers: true,
                    },
                })
                .to(
                    this.h1.children[0],
                    {
                        x: "-125%",
                        duration: 1,
                        ease: "expo",
                    }
                )

            gsap
                .timeline({
                    scrollTrigger: {
                        trigger: "#landing-page",
                        // scroller: "main",
                        scrub: 1,
                        start: "top -10%",
                        end: "top -1000px",
                        // pin: true,
                        markers: true,
                    },
                })
                .to(
                    this.h1.children[1],
                    {
                        x: "125%",
                        duration: 1,
                        ease: "expo",
                    }
                )

            // ScrollTrigger.refresh();
        }, 100);

    },

    methods: {
        mouseOver() {
        },
    },
};
</script>

<style lang="scss">
@import "./Hero.scss";
</style>
