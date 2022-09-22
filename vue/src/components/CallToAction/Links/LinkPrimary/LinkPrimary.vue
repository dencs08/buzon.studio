<template>
    <a
        :href="href"
        :class="{
            'underline-primary': primary,
            'underline-secondary': secondary,
            animating: isAnimating,
        }"
        class="link-primary"
        @mouseover="animationStart"
        @animationend="animationEnd"
        ><span :class="{ 'point-link': point }">{{ text }}</span></a
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
        point: {
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
