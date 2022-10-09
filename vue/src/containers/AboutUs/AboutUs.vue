<template>
    <section data-scroll-section id="aboutUs" class="h-[50vh]">
        <div class="container my-28 md:grid grid-cols-8">
            <div class=""></div>
            <div class="col-start-6 col-end-9">
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
import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'
let name = import.meta.env.VITE_NAME;
export default {
    data() {
        return {
            name: name,
        };
    },

    mounted() {
        let text = this.$refs.text;
        gsap.registerPlugin(ScrollTrigger);

        setTimeout(() => {
            gsap
                .timeline({
                    scrollTrigger: {
                        trigger: "#aboutUs",
                        // scroller: "main",
                        scrub: 1,
                        start: "top center",
                        // end: "+=1000vh",
                        // pin: true,
                        markers: true,
                    },
                })
                .to(
                    text,
                    {
                        y: "300%",
                        duration: 1,
                        ease: "linear",
                    }
                )

            // ScrollTrigger.refresh();
        }, 100);
    }
};
</script>

<style lang="scss" scoped>
@import "./aboutus.scss";
</style>
