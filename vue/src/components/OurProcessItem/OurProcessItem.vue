<template>
    <div ref="trigger" class="link-activate-wrapper" @mouseover="mouseOver" @mouseleave="mouseLeave">
        <ItemHeader ref="itemHeader" :text="title" :small="true" :move="true" headerClass="font-color-secondary mb-2" />

        <p class="font-color-dark pr-0 md:pr-20">
            <span ref="paragraph">{{ paragraph }}</span>
        </p>
    </div>
</template>

<script>
import { ItemHeader } from "../";
import { textRevealInline } from '../../js/textReveal'

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

    mounted() {
        textRevealInline(this.$refs.paragraph, this.$refs.trigger, true, false, false, false);
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

span {
    visibility: hidden;
}
</style>
