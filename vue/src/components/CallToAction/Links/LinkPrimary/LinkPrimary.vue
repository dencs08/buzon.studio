<template>
    <span ref="content">
        <router-link
            v-show="to != null"
            :to="{ name: to }"
            :class="{
                'underline-primary': primary && noUnderline === false,
                'underline-secondary': secondary && noUnderline === false,
                'link-primary': primary,
                'link-move': move,
                'text-highlight': isMouseOver,
                animating:
                    (primary && isAnimating) || (secondary && isAnimating),
            }"
            class="transitions"
            @mouseover="animationStart"
            @animationend="animationEnd"
            @mouseleave="mouseLeave"
            ><span :class="{ arrow: point }">{{ text }}</span></router-link
        >

        <a
            v-show="href != null"
            :href="href"
            :class="{
                'underline-primary': primary && noUnderline === false,
                'underline-secondary': secondary && noUnderline === false,
                'link-primary': primary,
                'link-move': move,
                'text-highlight': isMouseOver,
                animating:
                    (primary && isAnimating) || (secondary && isAnimating),
            }"
            class="transitions"
            @mouseover="animationStart"
            @animationend="animationEnd"
            @mouseleave="mouseLeave"
            ><span :class="{ arrow: point }">{{ text }}</span></a
        >
    </span>
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
        to: String,
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
