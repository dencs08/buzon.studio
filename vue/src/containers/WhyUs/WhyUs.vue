<template>
    <section id="offer" class="section-mb">
        <div class="container mb-8 lg:mb-12 xl:mb-20">
            <div class="mb-8 md:mb-12">
                <SectionHeader mainHeader="Działamy po to abyś się rozwijał" />
            </div>
            <div class="grid grid-cols-2">
                <Column
                    title="Produkty cyfrowe"
                    paragraph="Tworzymy i rozwijamy, strony internetowe, aplikacje, wizualizacje, grafiki, projekty UI i UX adekwatnie pod Twoje potrzeby, tak abyś otrzymał najlepiej dostosowany produkt który pracuje dla Ciebie."
                    :ul="[
                        'Strony internetowe',
                        'E-commerce',
                        'UI / UX',
                        'Projekty graficzne',
                        'Wizualizacje 3D',
                        'Modelowanie 3D',
                        'Aplikacje',
                    ]"
                />
                <Column
                    title="Branding"
                    paragraph="Dziś branding jest najważniejszym elementem każdego dobrze prosperującego biznesu, łatwe do zapamiętania logo, charakterystyczna identyfikacja wizualna czy dobrze obrana strategia marketingowa, ma ogromne znaczenie w jaki sposób będziesz odbierany na rynku"
                    :ul="[
                        'Nazewnictwo',
                        'Identyfikacja wizualna',
                        'Logotypy',
                        'Marketing',
                        'Strategie biznesowe w social mediach',
                    ]"
                />
            </div>
        </div>

        <div class="container">
            <a href="/kontakt" class="link-activate-wrapper-paragraph contact">
                <LinkPrimary
                    href="/kontakt"
                    text="Napisz do nas"
                    :primary="true"
                    class=""
                />
                <span class="font-color-darker"> i stwórzmy coś razem.</span>
            </a>
        </div>
    </section>
</template>

<script>
import { Column, LinkPrimary, SectionHeader } from "../../components";
export default {
    components: {
        Column,
        LinkPrimary,
        SectionHeader,
    },
};
</script>

<style lang="scss" scoped>
@import "./whyus.scss";
</style>
