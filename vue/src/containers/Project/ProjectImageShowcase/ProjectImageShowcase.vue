<template>
    <section v-if="imageSlider1" id="ProjectImageShowcase" class="section-mb-s">
        <div v-if="imageSlider1.length > 0" class="space-y-2 sm:space-y-3 md:space-y-7 lg:space-y-10 ">
            <ScrubTextSlider :images="imageSlider1" />
            <ScrubTextSlider v-if="imageSlider2" :images="imageSlider2" :isReverse="true" />
        </div>
    </section>

</template>
<script>
import { ScrubTextSlider } from '../../../components'
export default {
    props: {
        imageSlider1: Array,
        imageSlider2: Array,
    },
    components: {
        ScrubTextSlider
    },

    mounted() {

    },
}
</script>

<style lang="scss">
@import './projectshowcaseimage.scss';
</style>