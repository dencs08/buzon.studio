<template>
    <div id="wrapper" class="flex items-center relative"
        :class="`${headerClass} ${move ? 'move' : ''} ${split ? 'clip' : ''}`" @mouseover="mouseOver"
        @mouseleave="mouseLeave">
        <div v-if="move" id="logoWrapper" ref="logoWrapper" class="opacity-0"
            :class="{ isMouseOver: this.isMouseover, move: move, split: split }">
            <Logo :small="small ? true : false" :normal="normal ? true : false" :big="big ? true : false" />
        </div>
        <div id="headerWrapper" :class="{ isMouseOver: this.isMouseover, split: split }" class="leading-[0]">
            <h3 class="font-family-header" :class="{
                small: small,
                normal: normal,
                big: big,
                isMouseOver: this.isMouseover,
                move: move,
                split: split,
            }" id="header" ref="header">
                {{ text }}
            </h3>
        </div>
    </div>
</template>

<script>
import { Logo } from "../../";

import { splitCloneToChars } from "../../../js/cloneSplit";
import { animateCharsIn } from "../../../js/utilities/animateChars.js";

export default {
    data() {
        return {
            isAnimating: false,
            isMouseover: false,
        };
    },
    props: {
        text: String,
        headerClass: String,
        small: Boolean,
        normal: Boolean,
        big: Boolean,
        split: Boolean,
        move: Boolean,
    },

    setup() {
        let anim;

        return { anim };
    },

    mounted() {
        if (!this.split) return;
        const elementToSplit = this.$refs.header;
        splitCloneToChars(elementToSplit);

        this.anim = animateCharsIn(
            this.$refs.header.children,
            this.$refs.header.nextSibling.children
        );
    },

    methods: {
        mouseOver() {
            this.isMouseover = true;

            if (!this.split) return;
            this.anim.play();
        },

        mouseLeave() {
            this.isMouseover = false;

            if (!this.split) return;
            this.anim.reverse();
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
