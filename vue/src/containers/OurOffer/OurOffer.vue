<template>
    <div id="OurOffer">

        <OurOfferColumn title="Produkty cyfrowe"
            paragraph="Tworzymy i rozwijamy, strony internetowe, aplikacje, wizualizacje, grafiki, projekty UI i UX adekwatnie pod Twoje potrzeby, tak abyś otrzymał najlepiej dostosowany produkt który pracuje dla Ciebie."
            :text="['Strony internetowe', 'E-commerce', 'Aplikacje']"
            :textSecond="['UI/UX', 'Projekty graficzne', 'Wizualizacje 3D']" :to="to" :bottomLinkText="bottomLinkText"
            :buttons="buttons" />


        <OurOfferColumn title="Branding"
            paragraph="Dziś branding jest najważniejszym elementem każdego dobrze prosperującego biznesu, łatwe do zapamiętania logo, charakterystyczna identyfikacja wizualna czy dobrze obrana strategia marketingowa, ma ogromne znaczenie w jaki sposób będziesz odbierany na rynku"
            :text="['Nazewnictwo', 'Identyfikacja wizualna', 'Logotypy']"
            :textSecond="['Marketing', 'Socialmedia', 'Strategie biznesowe']" :to="to" :bottomLinkText="bottomLinkText"
            :buttons="buttons" />

    </div>
</template>
<script>
import { OurOfferColumn } from '../../components'
export default {
    props: {
        buttons: Boolean,
        to: String,
        bottomLinkText: Array,
    },

    components: {
        OurOfferColumn,
    }
}
</script>
<style lang="scss">
@import './ouroffer.scss';
</style>