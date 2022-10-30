<template>
    <div class="md:h-screen grid content-center">
        <router-link :to="{ name: 'Oferta' }" @mouseover="mouseOver" @mouseleave="mouseLeave">
            <div class="offer-wrapper relative">
                <div class="mb-10 md:mb-0 sm:flex justify-center items-center">
                    <div class="my-0 ml-0 sm:ml-2 md:ml-4">
                        <ItemHeader :text="title" :big="true" :move="true" headerClass="inline-block uppercase"
                            ref="header" />
                        <div class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                            <p class="font-color-dark lg:w-4/12">
                                {{ paragraph }}
                            </p>
                            <Button text="Oferta" class="mt-6" :arrow="true" :secondary="true" v-if="buttons" />
                            <AutoTextSlider :text="ul" :wordAmount="2" fontSize="12vw" height="8vw"
                                class="my-6 md:my-10" />
                            <AutoTextSlider :text="ul" :wordAmount="2" fontSize="12vw" height="8vw"
                                class="my-6 md:my-10" />

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
    AutoTextSlider
} from "../../components";

export default {
    props: {
        title: String,
        paragraph: String,
        ul: String,
        buttons: Boolean,
    },

    components: {
        ItemHeader,
        Button,
        AutoTextSlider

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