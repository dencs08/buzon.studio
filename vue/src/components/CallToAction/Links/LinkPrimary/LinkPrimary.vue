<template>
    <component
        :is="this.defineTag()"
        :to="{ name: to }"
        :href="href"
        :class="{
            'underline-primary': primary && noUnderline === false,
            'underline-secondary': secondary && noUnderline === false,
            'link-primary': primary,
            'link-move': move,
            'text-highlight': isMouseOver,
            animating: (primary && isAnimating) || (secondary && isAnimating),
            'clip leading-none': split,
            active: isMouseOver,
        }"
        class="transitions cursor-pointer"
        @mouseover="animationStart"
        @animationend="animationEnd"
        @mouseleave="mouseLeave"
        ><span ref="text" :class="{ arrow: point }">{{ text }}</span>
    </component>
</template>

<script>
import cloneSplit from "../../../../js/cloneSplit";
import { animateIn } from "../../../../js/utilities/animateChars.js";

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
        let anim;

        return { anim };
    },

    mounted() {
        if (!this.split) return;
        const elementToSplit = this.$refs.text;
        cloneSplit(elementToSplit);

        this.anim = animateIn(
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
        animationStart() {
            this.isAnimating = true;
            this.isMouseOver = true;

            if (!this.split) return;
            this.anim.play();
        },
        animationEnd() {
            this.isAnimating = false;
        },
        mouseLeave() {
            this.isMouseOver = false;

            if (!this.split) return;
            this.anim.reverse();
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkprimary.scss";
</style>
