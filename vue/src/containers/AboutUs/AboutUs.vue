<template>
    <section ref="section" id="aboutUs">
        <div class="container w-11/12 grid content-center text-center w-screen h-[30vh] lg:h-screen">
            <p class="font-color-dark" ref="text">
                <b class="uppercase font-bold">{{ name }}</b> to 5 lat
                doświadczenia w tworzeniu projektów i pomaganiu markom w
                optymalizacji ich działań marketingowych.

                <LinkPrimary to="Kontakt" text="Stwórzmy coś razem!" :primary="true" class="font-medium" />
            </p>
        </div>
    </section>
</template>

<script>
let name = import.meta.env.VITE_NAME;

import { textReveal } from '../../js/textReveal'

import LinkPrimary from '../../components/CallToAction/Links/LinkPrimary/LinkPrimary.vue';

export default {
    components: { LinkPrimary },
    data() {
        return {
            name: name,
        };
    },
    mounted() {
        let text = this.$refs.text;
        let section = this.$refs.section;

        textReveal(text, section, false, 1, true)
    },
};
</script>

<style lang="scss" scoped>
@import "./aboutus.scss";
</style>
