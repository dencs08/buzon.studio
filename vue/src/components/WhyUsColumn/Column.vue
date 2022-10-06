<template>
    <div class="px-0 lg:px-5 mb-4 md:mb-0 link-activate-wrapper md:h-[60vh]" :class="{ 'mt-20': reverse }">
        <router-link :to="{ name: 'Oferta' }" @mouseover="mouseOver" @mouseleave="mouseLeave">
            <div class="offer-wrapper relative">
                <div :class="{ 'flex-row-reverse': reverse }" class="mb-10 md:mb-0 sm:flex justify-center items-center">
                    <div class="mb-3 md:mb-0 flex basis-11/12 px-2" :class="{
                        'justify-start': reverse === false,
                        'justify-end': reverse,
                    }">
                        <img src="../../assets/images/branding.png" alt="" />
                    </div>
                    <div class="basis-11/12 px-0 sm:px-2 md:px-4 lg:px-10">
                        <div class="my-0 ml-0 sm:ml-2 md:ml-4">
                            <ItemHeader :text="title" :normal="true" :move="true" headerClass="inline-block"
                                ref="header" />
                            <div class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                                <p class="font-color-dark">
                                    {{ paragraph }}
                                </p>
                                <ul class="uppercase font-color-darker mt-2 dots">
                                    <li v-for="item in ul">
                                        {{ item }}
                                    </li>
                                </ul>
                                <Button text="Oferta" class="mt-6" :arrow="true" :secondary="true" v-if="buttons" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </router-link>
    </div>
</template>

<script>
import { ItemHeader, Button } from "../";

export default {
    data() {
        return {
            isMouseOver: false,
        };
    },

    props: {
        title: String,
        paragraph: String,
        ul: Array,

        reverse: {
            type: Boolean,
            default: false,
        },
        buttons: {
            type: Boolean,
        },
    },
    components: {
        ItemHeader,
        Button,
    },

    methods: {
        mouseOver() {
            this.$refs.header.mouseOver();
            this.isMouseOver = true;
        },
        mouseLeave() {
            this.$refs.header.mouseLeave();
            this.isMouseOver = false;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./column.scss";
</style>
