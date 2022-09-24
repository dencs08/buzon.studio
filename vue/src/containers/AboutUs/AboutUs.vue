<template>
    <section id="aboutUs">
        <div class="container my-28 grid grid-cols-8">
            <div class=""></div>
            <div class="col-start-6 col-end-9">
                <p class="font-color-dark">
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
};
</script>

<style lang="scss" scoped>
@import "./aboutus.scss";
</style>
