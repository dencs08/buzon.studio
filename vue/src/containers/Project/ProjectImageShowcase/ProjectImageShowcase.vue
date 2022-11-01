<template>
    <section id="ProjectImageShowcase" class="space-y-9 section-mb-s">
        <ScrubTextSlider :images="['bielanypark3', 'bielanypark4', 'bielanypark5', 'bielanypark6', 'bielanypark7']" />
        <ScrubTextSlider :images="['bielanypark7', 'bielanypark6', 'bielanypark4', 'bielanypark3', 'bielanypark5']"
            :isReverse="true" />
    </section>

</template>
<script>
import { ScrubTextSlider } from '../../../components'
export default {
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