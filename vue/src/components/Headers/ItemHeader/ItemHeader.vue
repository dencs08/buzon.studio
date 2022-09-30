<template>
    <div
        id="wrapper"
        :class="`${headerClass} ${move ? 'move' : ''} ${
            small ? 'ml-[-2vw]' : ''
        } ${normal ? 'ml-[-2vw]' : ''} ${big ? 'ml-[-2vw]' : ''}`"
        class="flex items-center"
        @mouseover="mouseOver"
        @mouseleave="mouseLeave"
    >
        <div
            id="logoWrapper"
            ref="logoWrapper"
            class="opacity-0"
            :class="`${this.mouseIsOver ? 'isMouseOver' : ''}`"
        >
            <Logo
                class=""
                :small="small ? true : false"
                :normal="normal ? true : false"
                :big="big ? true : false"
            />
        </div>
        <div id="headerWrapper">
            <h3
                class="font-family-header"
                :class="`${small ? 'small' : ''} ${normal ? 'normal' : ''} ${
                    big ? 'big' : ''
                } ${this.mouseIsOver ? 'isMouseOver' : ''}
                `"
                id="header"
                ref="header"
            >
                {{ text }}
            </h3>
        </div>
    </div>
</template>

<script>
import { gsap } from "gsap";
import { Logo } from "../../";
var tl = gsap.timeline();

export default {
    data() {
        return {
            isAnimating: false,
            mouseIsOver: false,
        };
    },
    props: {
        text: String,
        headerClass: String,

        move: {
            type: Boolean,
            default: () => false,
        },

        small: {
            type: Boolean,
        },
        normal: {
            type: Boolean,
        },
        big: {
            type: Boolean,
        },
    },

    methods: {
        mouseOver() {
            this.mouseIsOver = true;
        },

        mouseLeave() {
            this.mouseIsOver = false;
        },
    },

    components: {
        Logo,
    },
};
</script>

<style lang="scss" scoped>
@import "./itemheader.scss";
</style>
