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
        <div id="logoWrapper" ref="logoWrapper" class="opacity-0">
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
                }`"
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

export default {
    data() {
        return {
            isAnimating: false,
            mouseIsOver: false,
            mouseIsLeave: true,
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
            this.killTweens();
            gsap.to(this.$refs.header, {
                duration: 0.25,
                x: "1.75vw",
            });
            gsap.to(this.$refs.logoWrapper, {
                duration: 0.2,
                x: "1.75vw",
                opacity: 1,
                delay: 0.1,
                ease: "power1.out",
            });
        },

        mouseLeave() {
            this.killTweens();
            gsap.to(this.$refs.logoWrapper, {
                duration: 0.25,
                x: "0",
                opacity: 0,
                ease: "power1.out",
            });
            gsap.to(this.$refs.header, {
                duration: 0.2,
                x: "0",
                delay: 0.1,
            });
        },

        killTweens() {
            gsap.killTweensOf(this.$refs.logoWrapper);
            gsap.killTweensOf(this.$refs.header);
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
