<template>
    <section id="offer" class="section-mb">
        <div class="container mb-2 lg:mb-4 xl:mb-5">
            <div>
                <h3 class="headerline">Działamy po to abyś się rozwijał</h3>
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
            <div class="link-activate-wrapper contact">
                <a href="/kontakt" class="underline-primary font-color-primary"
                    >Napisz do nas
                </a>
                <a href="/kontakt" class="font-color-dark">
                    i stwórzmy coś razem
                </a>
            </div>
        </div>
    </section>
</template>

<script>
import { Column } from "../../components";
export default {
    components: {
        Column,
    },
};

console.log(window.APP_NAME);
</script>

<style>
@import "./whyus.scss";
</style>
