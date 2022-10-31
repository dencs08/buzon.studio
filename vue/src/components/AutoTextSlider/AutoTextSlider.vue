<template>
    <div ref="brandNameSlider" class="brandNameSlider w-full relative m-auto overflow-hidden select-none"
        :style="`height: ${height}`">
        <div class="relative font-family-header flex items-center w-full whitespace-nowrap"
            :style="`height: ${height}`">
            <div v-for="amount in wordAmount" class="text-center absolute whitespace-nowrap"><span>{{ text
            }}</span></div>
        </div>
    </div>
</template>

<script>
import gsap from "gsap"

export default {
    props: {
        text: String,
        fontSize: String,
        wordAmount: Number,
        height: String,
        isReverse: Boolean,
    },

    mounted() {
        let brandNameSliderWidth = this.$refs.brandNameSlider.offsetWidth;
        let elementsToAnimate = this.$refs.brandNameSlider.children[0].children;
        let percentageOfElementInArray = ((100 / (elementsToAnimate.length - 1)));
        let brandNameSliderWidthPlusOne = this.$refs.brandNameSlider.offsetWidth * ((percentageOfElementInArray + 100) / 100);

        this.$refs.brandNameSlider.children[0].style.left = -percentageOfElementInArray + "%"

        for (let i = 0; i < this.$refs.brandNameSlider.children[0].children.length; i++) {
            const word = this.$refs.brandNameSlider.children[0].children[i];
            word.style.fontSize = this.fontSize;
        }

        let tl = gsap.timeline()
        gsap.set(elementsToAnimate, {
            x: (i) => i * (brandNameSliderWidth / (elementsToAnimate.length - 1)),
        });

        tl.to(elementsToAnimate, {
            duration: 12,
            ease: "none",
            x: `+=${brandNameSliderWidthPlusOne}`,
            modifiers: {
                x: gsap.utils.unitize(x => parseFloat(x) % brandNameSliderWidthPlusOne)
            },
            repeat: -1,
        });
    },
}
</script>
<style lang="scss">
.brandNameSlider {
    span {
        color: rgb(20, 20, 20);
    }
}
</style>