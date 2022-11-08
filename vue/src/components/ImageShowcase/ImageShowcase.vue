<template>
    <router-link :to="url()" @mouseover="mouseOver" @mouseleave="mouseLeave">
        <div class="portfolio-wrapper relative whitespace-normal">
            <div class="min-w-[100px] w-full max-w-[90vw] md:max-w-[100%] md:mx-auto flex inline-block overflow-hidden"
                :class="[horizontal ? 'aspect-[8/10]' : 'aspect-[10/7] h-auto',
                long ? 'aspect-[9/12]' : '']">
                <img :src="image()" alt="" class="w-full h-full object-cover duration-500 z-[-1]" :class="{
                    'scale-[1.1] brightness-110 saturate-[1.1]':
                        this.isMouseOver,
                }" />
            </div>

            <div class="info " :class="[horizontal ? 'ml-1 sm:ml-3 lg:ml-5' : 'ml-1 sm:ml-8 lg:ml-10']">
                <div class="font-family-header my-0">
                    <ItemHeader ref="itemHeader" :text="title" :big="true" :split="true" :noReveal="true"
                        headerClass="mt-[-25px] md:mt-[-25px] lg:mt-[-30px] xl:mt-[-50px] z-[2] inline-block" />
                </div>
                <p class="font-color-secondary mb-1 md:mb-3 xl:mb-6 break-all pr-5 lg:pr-10">
                    {{ info }}
                </p>
                <span v-for="item in category"
                    class="font-family-primary font-color-darker bg-gray-200 px-3 mr-3 rounded-full category whitespace-nowrap">
                    {{ item }}
                </span>
            </div>
        </div>
    </router-link>
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
        info: String,
        category: Array,
        horizontal: Boolean,
        long: Boolean,
    },

    components: {
        ItemHeader,
    },

    methods: {
        mouseOver() {
            if (!this.$refs.itemHeader) return;
            this.$refs.itemHeader.mouseOver();
            this.isMouseOver = true;
        },
        mouseLeave() {
            if (!this.$refs.itemHeader) return;
            this.$refs.itemHeader.mouseLeave();
            this.isMouseOver = false;
        },
        url() {
            return `/projekt/${this.title}`;
        },
        image() {
            return `/src/assets/images/portfolio/${this.title}/${this.title}_portfolio.jpg`;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./imageshowcase.scss";
</style>
