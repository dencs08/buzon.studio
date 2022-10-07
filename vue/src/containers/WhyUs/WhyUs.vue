<template>
    <section data-scroll-section id="offer" class="section-mb">
        <div class="container mb-8 lg:mb-12 xl:mb-20">
            <div class="mb-8 md:mb-12">
                <SectionHeader v-if="header" mainHeader="Działamy po to abyś się rozwijał" />
            </div>
            <Column title="Produkty cyfrowe"
                paragraph="Tworzymy i rozwijamy, strony internetowe, aplikacje, wizualizacje, grafiki, projekty UI i UX adekwatnie pod Twoje potrzeby, tak abyś otrzymał najlepiej dostosowany produkt który pracuje dla Ciebie."
                :ul="[
                    'Strony internetowe',
                    'E-commerce',
                    'UI / UX',
                    'Projekty graficzne',
                    'Wizualizacje 3D',
                    'Modelowanie 3D',
                    'Aplikacje',
                ]" :buttons="buttons" />
            <Column title="Branding"
                paragraph="Dziś branding jest najważniejszym elementem każdego dobrze prosperującego biznesu, łatwe do zapamiętania logo, charakterystyczna identyfikacja wizualna czy dobrze obrana strategia marketingowa, ma ogromne znaczenie w jaki sposób będziesz odbierany na rynku"
                :ul="[
                    'Nazewnictwo',
                    'Identyfikacja wizualna',
                    'Logotypy',
                    'Marketing',
                    'Strategie biznesowe w social mediach',
                ]" :reverse="true" :buttons="buttons" />
        </div>

        <div v-if="contactParagraph" class="container contact">
            <LinkParagraph @mouseover="$refs.link1.animationStart()" @mouseleave="$refs.link1.handleMouseLeave()"
                to="Kontakt">
                <LinkPrimary to="Kontakt" text="Napisz do nas" :primary="true" ref="link1" />{{}}

                <span class="font-color-darker duration-200">
                    i stwórzmy coś razem.</span>
            </LinkParagraph>
        </div>
    </section>
</template>

<script>
import {
    Column,
    LinkPrimary,
    SectionHeader,
    LinkParagraph,
} from "../../components";
export default {
    props: {
        header: {
            type: Boolean,
            default: () => false,
        },
        contactParagraph: {
            type: Boolean,
            default: () => false,
        },
        buttons: {
            type: Boolean,
        },
    },
    components: {
        Column,
        LinkPrimary,
        SectionHeader,
        LinkParagraph,
    },
};
</script>

<style lang="scss" scoped>
@import "./whyus.scss";
</style>
