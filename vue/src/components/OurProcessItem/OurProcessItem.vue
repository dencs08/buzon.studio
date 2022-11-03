<template>
    <div class="link-activate-wrapper" @mouseover="mouseOver" @mouseleave="mouseLeave">
        <ItemHeader :text="title" :small="true" :move="true" headerClass="font-color-secondary mb-2" ref="itemHeader" />

        <p class="font-color-dark pr-0 md:pr-20">
            {{ paragraph }}
        </p>
    </div>
</template>

<script>
import { ItemHeader } from "../";

export default {
    data() {
        return {
            isMouseOver: false,
        };
    },

    props: {
        title: String,
        paragraph: String,
    },
    components: {
        ItemHeader,
    },

    methods: {
        mouseOver() {
            this.$refs.itemHeader.mouseOver();
            this.isMouseOver = true;
        },
        mouseLeave() {
            this.$refs.itemHeader.mouseLeave();
            this.isMouseOver = false;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./ourprocessitem.scss";
</style>
