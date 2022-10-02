<template>
    <section id="landing-page" class="flex items-center">
        <div class="container my-[110px] md:my-0">
            <h1>BUZONSTUDIO INNOWACYJNE USŁUGI IT.</h1>

            <h2 class="fw-normal font-family-primary">
                <LinkParagraph to="Oferta">
                    <div
                        @mouseover="$refs.link1.animationStart()"
                        @mouseleave="$refs.link1.mouseLeave()"
                        class="inline"
                    >
                        <span class="font-color-darker duration-200">
                            Jesteśmy kreatywnym studio w branży IT zajmującym
                            sie dostarczniem najlepszych</span
                        >{{}}
                        <LinkPrimary
                            to="Oferta"
                            text="usług"
                            :primary="true"
                            class="font-color-dark"
                            ref="link1"
                        />{{}}
                        <span class="font-color-darker duration-200">IT. </span>
                    </div>
                </LinkParagraph>

                <LinkParagraph to="Oferta">
                    <div
                        @mouseover="$refs.link3.animationStart()"
                        @mouseleave="$refs.link3.mouseLeave()"
                        class="inline"
                    >
                        <span class="font-color-darker duration-200">
                            Tworzymy strony internetowe, wizualizacje, branding,
                            marketing online i inne produkty cyfrowe z pomocą
                            metody</span
                        >{{}}

                        <span
                            data-tooltip="Dzięki All-in-One zaosczędzisz czas i pieniądze, nie martw się o zatrudnianie kilku zespołów osobno - my realizujemy wszystko od A do Z."
                        >
                            <LinkPrimary
                                to="Oferta"
                                text="All-in-One."
                                :primary="true"
                                class="font-medium"
                                ref="link3"
                            />
                        </span>
                    </div>
                </LinkParagraph>
            </h2>
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
};
</script>

<style lang="scss" scoped>
@import "./Hero.scss";
</style>
