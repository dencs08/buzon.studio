<template>
    <section ref="section" id="OurOffer" class="bg-light" data-scroll data-scroll-speed="5">
        <div class="container">
            <OurOfferColumn title="Nasze możliwości"
                :digital="['Strony internetowe', 'Projekty graficzne', 'Wizualizacje 3D', 'E-commerce', 'Aplikacje', 'UI/UX']"
                :branding="['Identyfikacja wizualna', 'Nazewnictwo', 'Marketing online', 'Social media', 'Logotypy']"
                :to="to" :bottomLinkText="bottomLinkText" :buttons="buttons" />
        </div>
    </section>
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
    },
}
</script>

<style lang="scss">
@import './ouroffer.scss';
</style>