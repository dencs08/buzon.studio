<template>
    <div @mouseover="handleMouseOver" @animationend="animationEnd" @mouseleave="handleMouseLeave"
        :class="{'clip' : split, 'active': isMouseOver}" class="inline-block">
        <component :is="this.defineTag()" :to="{ name: to }" :href="href" :class="{
            'underline-primary': primary && noUnderline === false,
            'underline-secondary': secondary && noUnderline === false,
            'link-primary': primary,
            'link-move': move,
            'text-highlight': isMouseOver,
            animating: (primary && isAnimating) || (secondary && isAnimating),
            'leading-none': split,
            active: isMouseOver,
        }" class="transitions cursor-pointer"><span ref="text" :class="{ arrow: point }">{{ text }}</span>
        </component>
    </div>

</template>

<script>
import { splitCloneToChars } from "../../../../js/cloneSplit";
import { animateCharsIn } from "../../../../js/utilities/animateChars.js";

export default {
    data() {
        return {
            isAnimating: false,
            isMouseOver: false,
        };
    },

    props: {
        to: String,
        href: String,
        text: String,
        primary: Boolean,
        secondary: Boolean,
        point: Boolean,
        move: Boolean,
        split: Boolean,

        noUnderline: {
            type: Boolean,
            default: () => false,
        },
    },

    setup() {
        let splitAnimation;

        return { splitAnimation };
    },

    mounted() {
        if (!this.split) return;
        const elementToSplit = this.$refs.text;
        splitCloneToChars(elementToSplit);

        this.splitAnimation = animateCharsIn(
            this.$refs.text.children,
            this.$refs.text.nextSibling.nextSibling.children
        );
    },
    methods: {
        defineTag() {
            if (this.to) {
                return "router-link";
            } else {
                return "a";
            }
        },

        handleMouseOver() {
            this.isMouseOver = true;
            this.animationStart();
        },
        handleMouseLeave() {
            this.isMouseOver = false;

            if (!this.split) return;
            this.splitAnimation.reverse();
        },

        animationStart() {
            this.isMouseOver = true;
            this.isAnimating = true;

            if (!this.split) return;
            this.splitAnimation.play();
        },
        animationEnd() {
            this.isAnimating = false;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkprimary.scss";
</style>
