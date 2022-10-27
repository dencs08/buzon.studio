<template>
    <button class="btn" :class="[setButtonClass(), setButtonSize(), { arrow: arrow }]" @mouseover="handleMouseOver"
        @animationend="animationEnd" @mouseleave="handleMouseLeave">
        <div class="inline-block clip">
            <span ref="text">{{ text }}</span>
        </div>
    </button>
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
        text: String,
        primary: Boolean,
        secondary: Boolean,
        submit: Boolean,
        small: Boolean,
        normal: Boolean,
        big: Boolean,
        arrow: Boolean,

        split: Boolean,
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
            this.$refs.text.nextSibling.children
        );
    },

    methods: {
        setButtonClass() {
            if (!this.primary && !this.secondary && !this.submit)
                return "btn-primary";
            if (this.secondary) return "btn-secondary";
            return "btn-submit";
        },
        setButtonSize() {
            if (!this.small && !this.normal && !this.big) return "normal";
            if (this.small) return "small";
            return "big";
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
@import "./button.scss";
</style>
