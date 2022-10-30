<template>
    <div>
        <OurOfferColumn title="Produkty cyfrowe"
            paragraph="Tworzymy i rozwijamy, strony internetowe, aplikacje, wizualizacje, grafiki, projekty UI i UX adekwatnie pod Twoje potrzeby, tak abyś otrzymał najlepiej dostosowany produkt który pracuje dla Ciebie."
            ul=" · Strony internetowe · E-commerce · UI / UX · Projekty graficzne · Wizualizacje 3D · Aplikacje ·"
            :buttons="buttons" />
        <OurOfferColumn title="Branding"
            paragraph="Dziś branding jest najważniejszym elementem każdego dobrze prosperującego biznesu, łatwe do zapamiętania logo, charakterystyczna identyfikacja wizualna czy dobrze obrana strategia marketingowa, ma ogromne znaczenie w jaki sposób będziesz odbierany na rynku"
            ul=" · Nazewnictwo · Identyfikacja wizualna · Logotypy · Marketing · Strategie biznesowe w social mediach ·"
            :buttons="buttons" />
    </div>
</template>
<script>
import { OurOfferColumn } from '../../components'
export default {
    props: {
        buttons: Boolean,
    },

    components: {
        OurOfferColumn,
    }
}
</script>
<style lang="">
    
</style>