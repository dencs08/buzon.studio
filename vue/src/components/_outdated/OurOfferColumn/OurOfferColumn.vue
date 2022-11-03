<template>
    <div class="md:h-screen flex flex-col justify-center">
        <router-link :to="{ name: to }" @mouseover="mouseOver" @mouseleave="mouseLeave">
            <div class="offer-wrapper relative">
                <div class="mb-10 md:mb-0 overflow-hidden">
                    <div class="my-0 ml-0 sm:ml-2 md:ml-4 md:mt-28">
                        <ItemHeader :text="title" :big="true" :move="true" headerClass="inline-block uppercase"
                            ref="header" />
                        <div class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                            <p class="font-color-dark lg:w-4/12">
                                {{ paragraph }}
                            </p>
                            <Button text="Oferta" class="mt-6" :arrow="true" :secondary="true" v-if="buttons" />
                            <div>
                                <ScrubTextSlider :text="text" fontSize="12vw" height="6.5vw" class="" />
                                <ScrubTextSlider :text="textSecond" fontSize="12vw" height="6.5vw" class=""
                                    :isReverse="true" :pin="true" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </router-link>
        <div class="contactUs ml-4 mt-6 md:mt-12 h-[100px]">
            <LinkParagraph :to="to" @mouseover="$refs.link2.animationStart()"
                @mouseleave="$refs.link2.handleMouseLeave()">
                <span ref="span" class="font-color-darker duration-200 kern-0 mr-2">
                    {{ bottomLinkText[0] }}</span>

                <LinkPrimary :to="to" :text="bottomLinkText[1]" :primary="true" class="font-medium" ref="link2" />

            </LinkParagraph>
        </div>
    </div>
</template>
<script>
import {
    ItemHeader,
    Button,
    ScrubTextSlider,
    LinkParagraph,
    LinkPrimary
} from "../../components";

export default {
    props: {
        title: String,
        paragraph: String,
        text: Array,
        textSecond: Array,
        buttons: Boolean,
        to: String,
        bottomLinkText: Array,
    },

    components: {
        ItemHeader,
        Button,
        ScrubTextSlider,
        LinkParagraph,
        LinkPrimary
    },

    methods: {
        mouseOver() {
            if (!this.$refs.header) return
            this.$refs.header.mouseOver();
            this.isMouseOver = true;
        },
        mouseLeave() {
            if (!this.$refs.header) return
            this.$refs.header.mouseLeave();
            this.isMouseOver = false;
        },
    },
}
</script>
<style lang="scss" scoped>
@import './ouroffercolumn.scss';
</style>