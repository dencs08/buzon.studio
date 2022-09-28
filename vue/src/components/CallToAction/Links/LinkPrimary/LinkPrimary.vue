<template>
    <a
        :href="href"
        :class="{
            'underline-primary': primary && noUnderline === false,
            'underline-secondary': secondary && noUnderline === false,
            'link-primary': primary,
            'link-move': move,
            'text-highlight': isMouseOver,
            animating: (primary && isAnimating) || (secondary && isAnimating),
        }"
        class="transitions"
        @mouseover="animationStart"
        @animationend="animationEnd"
        @mouseleave="mouseLeave"
        ><span :class="{ 'point-link': point }">{{ text }}</span></a
    >
</template>

<script>
export default {
    data() {
        return {
            isAnimating: false,
            isMouseOver: false,
        };
    },

    props: {
        href: String,
        text: String,

        primary: {
            type: Boolean,
        },
        secondary: {
            type: Boolean,
        },
        point: {
            type: Boolean,
        },
        move: {
            type: Boolean,
        },
        noUnderline: {
            type: Boolean,
            default: () => false,
        },
    },

    methods: {
        animationStart() {
            this.isAnimating = true;
            this.isMouseOver = true;
        },
        animationEnd() {
            this.isAnimating = false;
        },
        mouseLeave() {
            this.isMouseOver = false;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkprimary.scss";
</style>
