<template>
    <div :class="headerClass" class="flex">
        <div>
            <Logo
                class="duration-[250ms]"
                :class="[
                    isAnimating && move
                        ? 'opacity-1 translate-x-[0px]'
                        : 'opacity-0 translate-x-[30px]',
                ]"
                :small="small ? true : false"
                :normal="normal ? true : false"
                :big="big ? true : false"
            />
        </div>
        <h3
            class="font-family-header translate-x-[-35px]"
            :class="`${small ? 'small' : ''} ${normal ? 'normal' : ''} ${
                big ? 'big' : ''
            } ${isAnimating && move ? 'move' : ''}`"
            @mouseover="mouseOver"
            @mouseleave="mouseLeave"
        >
            {{ text }}
        </h3>
    </div>
</template>

<script>
import { Logo } from "../../";
export default {
    data() {
        return {
            isAnimating: false,
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
            this.isAnimating = true;
        },
        mouseLeave() {
            this.isAnimating = false;
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
