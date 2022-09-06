<template>
    <section id="aboutUs">
        <div class="container grid grid-cols-8">
            <div class=""></div>
            <div class="col-start-6 col-end-9">
                <p class="font-color-dark">
                    <b class="uppercase">{{ name }}</b> to 5 lat doświadczenia w
                    tworzeniu projektów i pomaganiu markom w zwiększaniu
                    efektywności ich działania. Stawiamy czoło wyzwaniom i
                    osiągamy cele poprzez współpracę z Wami. Dzięki naszej
                    pracy, wspólnie możemy uzyskać wspaniałe efekty.
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

<style>
@import "./aboutus.scss";
</style>
