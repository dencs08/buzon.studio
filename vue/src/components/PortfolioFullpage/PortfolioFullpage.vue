<template>
    <div class="mt-10 lg:mt-0" @mouseover="mouseOver" @mouseleave="mouseLeave">
        <div class="mb-6 md:mb-10 lg:mb-0">
            <a :href="url">
                <div class="portfolio-wrapper relative">
                    <a
                        :href="url"
                        class="portfolio-item mx-auto flex inline-block overflow-hidden"
                    >
                        <img
                            :src="image"
                            alt=""
                            class="w-full h-full object-cover duration-500"
                            :class="{
                                'scale-[1.2] brightness-110 saturate-[1.1]':
                                    this.isMouseOver,
                            }"
                        />
                    </a>

                    <div class="info-header my-0">
                        <a
                            :href="url"
                            class="gs gs_fromTop font-family-header my-0"
                        >
                            <ItemHeader
                                :text="title"
                                :big="true"
                                :move="true"
                                headerClass="absolute top-[77%] left-[2%] z-[2] inline-block"
                                ref="itemHeader"
                            />
                        </a>
                    </div>
                    <div
                        class="info mt-6 mb:mt-1 lg:mt-12 pr-3 md:pr-0 ml-1 lg:ml-10"
                    >
                        <p class="font-color-secondary mb-1">
                            {{ info }}
                        </p>
                        <span
                            v-for="item in category"
                            class="font-family-primary font-color-darker bg-gray-200 px-3 mr-3 rounded-full"
                        >
                            {{ item }}
                        </span>
                    </div>
                </div>
            </a>
        </div>
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
        info: String,
        category: Array,
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
@import "./portfoliofullpage.scss";
</style>
