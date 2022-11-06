<template>
    <div class="h-[auto] py-14 md:py-0 md:h-[100vh] flex flex-col justify-center">
        <router-link :to="{ name: to }" @mouseover="mouseOver" @mouseleave="mouseLeave" class="h-[60%] mb-12 md:mb-0">
            <div>
                <ItemHeader :text="title" :big="true" :move="true"
                    headerClass="inline-block uppercase mb-6 sm:mb-8 md:mb-12" ref="header" />

                <div class="xs:flex flex-row xs:space-x-[10vw]">
                    <div class="mb-6 xs:mb-0">
                        <h4 class="font-family-header uppercase mb-3">Produkty Cyfrowe</h4>
                        <!-- <hr class="font-color-darker" /> -->
                        <ul class="dots space-y-1">
                            <li v-for="item in digital">{{ item }}</li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-family-header uppercase mb-3">Branding</h4>
                        <!-- <hr class="font-color-darker" /> -->
                        <ul class="dots space-y-1">
                            <li v-for="item in branding">{{ item }}</li>
                        </ul>
                    </div>
                </div>

                <div v-if="buttons" class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                    <Button text="Oferta" class="mt-6" :arrow="true" :dark="true" />
                </div>
            </div>
        </router-link>
        <div class="contactUs flex items-end">
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
        digital: Array,
        branding: Array,
        bottomLinkText: Array,
        buttons: Boolean,
        to: String,
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