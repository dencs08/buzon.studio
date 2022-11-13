<template>
    <section ref="hero" id="hero"
        class="flex overflow-hidden pt-14 md:pt-0 md:pb-24 md:pb-0 min-h-[40vh] md:h-screen grid content-center">
        <div class="container-hero text-center">
            <div>
                <h1 ref="h1" class="mb-4">
                    BUZON STUDIO
                </h1>
            </div>

            <h2 id="heroH2" ref="h2" class="fw-normal font-family-primary relative md:px-[10vw]">
                <LinkParagraph to="Oferta" @mouseover="$refs.link2.animationStart()"
                    @mouseleave="$refs.link2.handleMouseLeave()" :noReveal="true">

                    <span ref="span" class="font-color-darker duration-200 kern-0 mr-2 reveal">
                        Tworzymy strony internetowe, wizualizacje, logo,
                        marketing online i inne produkty cyfrowe z pomocą metody
                    </span>

                    <LinkPrimary id="linkHero" to="Oferta" text="All-in-One." :primary="true"
                        class="font-medium clip reveal" ref="link2" :noReveal="true" />

                </LinkParagraph>
            </h2>

            <router-link ref="buttonWrapper" :to="{ name: 'Portfolio' }">
                <Button ref="button" text="Portfolio" class="mt-6 reveal" :noReveal="true" :big="true" :split="true" />
            </router-link>
        </div>

    </section>
</template>

<script>
import { LinkPrimary, LinkParagraph, Button } from "../../components";
import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'
import { charReveal, textRevealInline, elementReveal } from "../../js/textReveal";

export default {
    components: {
        LinkPrimary,
        LinkParagraph,
        Button
    },

    mounted() {
        this.revealAnimations()

        setTimeout(() => {
            this.scrollTriggerAnimations()
        }, 100);
    },

    methods: {
        revealAnimations() {
            charReveal(this.$refs.h1, this.$refs.hero, true, false, false, false)
            setTimeout(() => {
                textRevealInline(this.$refs.span, this.$refs.hero, true, false, false, false)
                elementReveal(this.$refs.button.$el, this.$refs.button.$el, 1000)
                elementReveal(this.$refs.link2.$el, this.$refs.hero)
            }, 500);
        },
        mouseOver() {
        },

        scrollTriggerAnimations() {
            if (!window.matchMedia("(min-width: 1024px)").matches) return;

            gsap.registerPlugin(ScrollTrigger)

            this.tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true });
            this.tlScroll
                .to(this.$refs.h1, { y: "-110%", duration: 3, stagger: 0.05 }, "<")
                .to(this.$refs.h2, { opacity: 0, duration: 3 }, "<")
                .to(this.$refs.buttonWrapper.$el, { opacity: 0, duration: 3 }, "<")

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
    },
};
</script>

<style lang="scss" scoped>
@import "./Hero.scss";

h1,
.reveal {
    visibility: hidden
}
</style>
