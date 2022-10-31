<template>
    <div class="">
        <router-link :to="{ name: 'Oferta' }" @mouseover="mouseOver" @mouseleave="mouseLeave">
            <div class="offer-wrapper relative h-screen grid content-center">
                <div class="mb-10 md:mb-0 sm:flex justify-center items-center">
                    <div class="my-0 ml-0 sm:ml-2 md:ml-4">
                        <ItemHeader :text="title" :big="true" :move="true" headerClass="inline-block uppercase"
                            ref="header" />
                        <div class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                            <p class="font-color-dark lg:w-4/12">
                                {{ paragraph }}
                            </p>
                            <Button text="Oferta" class="mt-6" :arrow="true" :secondary="true" v-if="buttons" />
                            <ScrubTextSlider :text="text" fontSize="12vw" height="8vw" class="" />
                            <ScrubTextSlider :text="textSecond" fontSize="12vw" height="8vw" class=""
                                :isReverse="true" />
                        </div>
                    </div>
                </div>
            </div>
        </router-link>
    </div>
</template>
<script>
import {
    ItemHeader,
    Button,
    ScrubTextSlider
} from "../../components";

export default {
    props: {
        title: String,
        paragraph: String,
        text: Array,
        textSecond: Array,
        buttons: Boolean,
    },

    components: {
        ItemHeader,
        Button,
        ScrubTextSlider

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
<style lang="scss">
@import './ouroffercolumn.scss';
</style>