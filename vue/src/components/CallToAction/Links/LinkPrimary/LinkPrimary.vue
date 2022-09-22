<template>
    <a
        :href="href"
        :class="{
            'underline-primary': primary,
            'underline-secondary': secondary,
            animating: isAnimating,
        }"
        @mouseover="animationStart"
        @animationend="animationEnd"
        >{{ text }}</a
    >
</template>

<script>
export default {
    data() {
        return {
            isAnimating: false,
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
    },
    methods: {
        animationStart() {
            this.isAnimating = true;
        },
        animationEnd() {
            this.isAnimating = false;
        },
    },
};
</script>

<style lang="scss" scoped>
// [secondary ? 'underline-secondary' : 'underline-primary']
@import "./linkprimary.scss";
</style>
