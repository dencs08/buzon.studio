<template>
    <div ref="ScrubTextSlider" class="scrubTextSlider w-full relative m-auto overflow-hidden select-none"
        :style="`height: ${height}`">
        <div ref="TextToAnimate" class="relative font-family-header flex items-center w-full whitespace-nowrap"
            :style="`height: ${height}`">

            <div v-if="text" v-for="x in this.multiple">
                <span v-for="word in text" class="text-center whitespace-nowrap break-keep">
                    <span>
                        <span class="mx-5 text-highlight">·</span>
                        <span class="font-color-darker">
                            {{ word }}
                        </span>
                    </span>
                </span>
            </div>

            <div v-if="images">
                <div class="w-screen flex flex-row overflow-hidden relative">
                    <div ref="imageWrapper" class="break-keep whitespace-nowrap space-x-10">
                        <div v-for="image in newImagesArray"
                            class="inline-block w-[44vw] h-auto aspect-[12/8] overflow-hidden">
                            <img :src="imageSrc(image)" alt="" class="w-full h-full object-cover">
                        </div>
                    </div>
                </div>
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
        images: Array,
        fontSize: String,
        height: String,
        pin: Boolean,
        isReverse: Boolean,
    },

    data() {
        let multiple = 2;
        let tl, scrollTriggerStart, scrollTriggerEnd, scrollTriggerTrigger, newImagesArray;

        return { multiple, tl, scrollTriggerStart, scrollTriggerEnd, scrollTriggerTrigger, newImagesArray }
    },

    mounted() {
        this.tl = gsap.timeline({ defaults: { ease: 'none', duration: 5 } });

        this.textCase()
        this.imageCase()

        setTimeout(() => {
            gsap.registerPlugin(ScrollTrigger)
            ScrollTrigger.create({
                trigger: this.scrollTriggerTrigger,
                start: this.scrollTriggerStart,
                end: this.scrollTriggerEnd,
                scroller: "#smoothScroll",
                animation: this.tl,
                scrub: 0.3,
                pin: this.pin,
            })
        }, 1000);
    },

    methods: {
        imageSrc(imageName) {
            return `/src/assets/images/portfolio/bielanypark/${imageName}.jpg`;
        },

        textCase() {
            if (!this.text) return;

            const textToAnimate = this.$refs.TextToAnimate;
            const parent = this.$parent.$el.parentNode;

            this.scrollTriggerStart = "50% 50%"
            this.scrollTriggerEnd = "+=1500"
            this.scrollTriggerTrigger = parent;

            if (this.isReverse) {
                gsap.set(textToAnimate, { x: "-50%" });

                this.tl.to(textToAnimate, {
                    x: "0%"
                }, "<")
            } else {
                this.tl.to(textToAnimate, {
                    x: "-50%",
                })
            }
        },

        imageCase() {
            if (!this.images) return;

            const imageWrapper = this.$refs.imageWrapper;
            let height = window.innerHeight * 2;

            this.newImagesArray = this.images;
            this.newImagesArray.push(...this.images);

            this.scrollTriggerStart = "-10% bottom"
            this.scrollTriggerEnd = `+=${height}`
            this.scrollTriggerTrigger = this.$refs.ScrubTextSlider;


            if (this.isReverse) {
                gsap.set(imageWrapper, { x: "-50%" });

                this.tl.to(imageWrapper, {
                    x: "0%"
                }, "<")
            } else {
                this.tl.to(imageWrapper, {
                    x: "-50%",
                })
            }
        }
    },
}
</script>
<style lang="scss">
@import './scrubtextslider.scss';
</style>