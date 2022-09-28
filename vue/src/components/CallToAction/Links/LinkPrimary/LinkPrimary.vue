<template>
    <a
        :href="href"
        :class="{
            'underline-primary': primary && noUnderline === false,
            'underline-secondary': secondary && noUnderline === false,
            'link-primary': primary,
            'link-move': move,
            animating: (primary && isAnimating) || (secondary && isAnimating),
        }"
        class="transitions"
        @mouseover="accessChildren()"
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

    watch: {
        startAnim() {
            console.log("startanim");
            // this.isAnimating = true;
        },
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
        startAnim: {
            type: Boolean,
        },
        accessChildren: Function,
    },

    methods: {
        animationStart() {
            this.isAnimating = true;
            console.log(this.isAnimating);
            // this.$emit("animation-start");
        },
        animationEnd() {
            this.isAnimating = false;
            console.log(this.isAnimating);
            // this.$emit("animation-end");
        },

        completeWish() {},
    },
};
</script>

<style lang="scss" scoped>
// [secondary ? 'underline-secondary' : 'underline-primary']
@import "./linkprimary.scss";
</style>
