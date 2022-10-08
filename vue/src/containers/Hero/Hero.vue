<template>
    <section data-scroll-section id="landing-page" class="flex items-center">
        <div class="container my-[110px] md:my-0">
            <h1 ref="h1" class="mt-[18vh]">
                <div>
                    BUZON
                </div>
                <div class="float-right">STUDIO
                </div>
            </h1>

            <div class="w-1/3 mt-8">
                <h2 class="fw-normal font-family-primary relative">
                    <LinkParagraph to="Oferta" @mouseover="$refs.link1.animationStart()"
                        @mouseleave="$refs.link1.handleMouseLeave()">
                        <span class="font-color-darker duration-200">
                            Jesteśmy kreatywnym studio w branży IT zajmującym sie
                            dostarczniem najlepszych</span>{{}}
                        <LinkPrimary to="Oferta" text="usług" :primary="true" class="font-color-dark" ref="link1" />{{}}
                        <span class="font-color-darker duration-200">IT. </span>
                    </LinkParagraph>

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

        console.log(this.h1);
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
