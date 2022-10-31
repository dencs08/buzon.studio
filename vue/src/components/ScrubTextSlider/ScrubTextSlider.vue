<template>
    <div ref="ScrubTextSlider" class="scrubTextSlider w-full relative m-auto overflow-hidden select-none"
        :style="`height: ${height}`">
        <div ref="TextToAnimate" class="relative font-family-header flex items-center w-full whitespace-nowrap"
            :style="`height: ${height}`">
            <div v-for="x in this.multiple">
                <span v-for="word in text" class="text-center whitespace-nowrap break-keep">
                    <span>
                        <span class="mx-5 text-highlight">·</span>
                        <span class="font-color-darker">
                            {{ word }}
                        </span>
                    </span>
                </span>
            </div>
        </div>
    </div>
</template>

<script>
import gsap from "gsap"
import ScrollTrigger from 'gsap/ScrollTrigger'

export default {
    props: {
        text: Array,
        fontSize: String,
        height: String,
        isReverse: Boolean,
    },

    data() {
        let multiple = 2;

        return { multiple }
    },

    mounted() {
        const textToAnimate = this.$refs.TextToAnimate;
        const parent = this.$parent.$el.parentNode;
        let tl = gsap.timeline({ defaults: { ease: 'none', duration: 5 } });

        if (this.isReverse) {
            gsap.set(textToAnimate, { x: "-50%" });

            tl.to(textToAnimate, {
                x: "0%"
            }, "<")
        } else {
            tl.to(textToAnimate, {
                x: "-50%",
            })
        }

        setTimeout(() => {
            gsap.registerPlugin(ScrollTrigger)
            ScrollTrigger.create({
                trigger: parent,
                start: "50% 50%",
                end: "+=1500",
                scroller: "#smoothScroll",
                animation: tl,
                scrub: 0.3,
                pin: this.isReverse,
            })
        }, 1000);
    }
}
</script>
<style lang="scss">
@import './scrubtextslider.scss'
</style>