<template>
    <router-link :to="'/portfolio/' + title" @mouseover="mouseOver" @mouseleave="mouseLeave">
        <div class="portfolio-wrapper relative whitespace-normal">
            <div class="portfolio-item mx-auto flex inline-block overflow-hidden" :class="[horizontal ? 'aspect-[8/10]' : 'aspect-[10/7] h-auto',
            long ? 'aspect-[9/12]' : '']">
                <img :src="image" alt="" class="w-full h-full object-cover duration-500 z-[-1]" :class="{
                    'scale-[1.1] brightness-110 saturate-[1.1]':
                        this.isMouseOver,
                }" />
            </div>

            <div class="info ml-4 sm:ml-8 lg:ml-10">
                <div class="font-family-header my-0">
                    <ItemHeader :text="title" :big="true" :split="true"
                        headerClass="mt-[-15px] md:mt-[-20px] lg:mt-[-30px] xl:mt-[-50px] z-[2] inline-block"
                        ref="itemHeader" />
                </div>
                <p class="font-color-secondary mb-1 md:mb-3 xl:mb-6 break-all pr-5 lg:pr-10">
                    {{ info }}
                </p>
                <span v-for="item in category"
                    class="font-family-primary font-color-darker bg-gray-200 px-3 mr-3 rounded-full category">
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

    computed: {
        url() {
            return `/portfolio/${this.title}`;
        },
        image() {
            return `/src/assets/images/portfolio/${this.title}/${this.title}_portfolio.jpg`;
        },
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
    },
};
</script>

<style lang="scss" scoped>
@import "./imageshowcase.scss";
</style>
