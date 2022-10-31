<template>
    <div id="OurOffer">
        <div>
            <OurOfferColumn title="Produkty cyfrowe"
                paragraph="Tworzymy i rozwijamy, strony internetowe, aplikacje, wizualizacje, grafiki, projekty UI i UX adekwatnie pod Twoje potrzeby, tak abyś otrzymał najlepiej dostosowany produkt który pracuje dla Ciebie."
                :text="['Strony internetowe', 'E-commerce', 'Aplikacje']"
                :textSecond="['UI/UX', 'Projekty graficzne', 'Wizualizacje 3D']" :buttons="buttons" />
        </div>
        <div>
            <OurOfferColumn title="Branding"
                paragraph="Dziś branding jest najważniejszym elementem każdego dobrze prosperującego biznesu, łatwe do zapamiętania logo, charakterystyczna identyfikacja wizualna czy dobrze obrana strategia marketingowa, ma ogromne znaczenie w jaki sposób będziesz odbierany na rynku"
                :text="['Nazewnictwo', 'Identyfikacja wizualna', 'Logotypy']"
                :textSecond="['Marketing', 'Socialmedia', 'Strategie biznesowe']" :buttons="buttons" />
        </div>
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