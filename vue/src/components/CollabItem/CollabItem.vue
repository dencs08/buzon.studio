<template>
    <div ref="imgWrapper" class="grid content-center w-[20vw]">
        <img ref="img" :src="src()" :alt="`branding (logotyp) ${name}`" width="100%" height="100%"
            class="mx-auto max-h-[10vh]" />
    </div>
</template>

<script>
import { elementReveal } from '../../js/textReveal'

export default {
    props: {
        name: String,
    },

    mounted() {
        elementReveal(this.$refs.img, this.$refs.imgWrapper)
    },

    methods: {
        src() {
            return `/src/assets/images/logos/client/${this.name}.svg`;
        },
    }
};
</script>

<style lang="scss" scoped>
@import "./collabitem.scss";

img {
    visibility: hidden
}
</style>
