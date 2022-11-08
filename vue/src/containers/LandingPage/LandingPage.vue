<template>
    <section ref="trigger" id="LandingPage">
        <div ref="elementsWrapper" class="container pt-[15vh] section-mb">
            <h1 ref="h1" class="leading-[100%] clip">
                {{ h1 }}
            </h1>

            <h2 ref="h2" class="mb-5 clip">
                {{ h2 }}
            </h2>
            <!-- <x-arrow /> -->
        </div>
    </section>
</template>

<script>
import { textReveal } from '../../js/textReveal'

export default {
    props: {
        h1: String,
        h2: String,
        noReveal: Boolean,
    },

    mounted() {
        if (!this.noReveal) textReveal(this.$refs.h1, this.$refs.trigger, true, false, false, false);
        if (!this.noReveal) textReveal(this.$refs.h2, this.$refs.trigger, true, false, false, false);

    }
}
</script>

<style lang="scss" scoped>
h1,
h2 {
    visibility: hidden;
}
</style>