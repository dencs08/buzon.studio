<template>
    <section id="aboutUs">
        <div class="container md:flex justify-end items-center h-[30vh]">
            <div class="md:w-1/2 md:px-4">
                <p class="font-color-dark" ref="text">
                    <b class="uppercase font-bold">{{ name }}</b> to 5 lat
                    doświadczenia w tworzeniu projektów i pomaganiu markom w
                    zwiększaniu efektywności ich działania. Stawiamy czoło
                    wyzwaniom i osiągamy cele poprzez współpracę z Wami. Dzięki
                    wspólnej pracy, wspólnie możemy uzyskać wspaniałe efekty.
                </p>
            </div>
        </div>
    </section>
</template>

<script>
let name = import.meta.env.VITE_NAME;
export default {
    data() {
        return {
            name: name,
        };
    },

    mounted() {
        let text = this.$refs.text;
    }
};
</script>

<style lang="scss" scoped>
@import "./aboutus.scss";
</style>
