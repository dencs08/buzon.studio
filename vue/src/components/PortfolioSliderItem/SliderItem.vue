<template>
    <a cursor-expand href="/portfolio/name">
        <div
            class="track-item relative mb-6 ml-5 md:mr-20 md:inline-block lg:mb-0 lg:w-5/12 link-activate-wrapper"
        >
            <div>
                <div class="whitespace-normal relative">
                    <ItemHeader
                        :text="title"
                        :big="true"
                        :move="true"
                        headerClass="absolute top-[69%] z-[2] inline-block"
                    />
                    <a
                        :href="path"
                        class="portfolio-image-wrapper inline-block overflow-hidden"
                    >
                        <img
                            :src="src"
                            alt="tworzenie logo i brandingu dla marki danfit"
                            class="img-slider w-full h-full object-cover"
                        />
                    </a>
                    <div class="mt-7 px-5">
                        <p
                            class="font-family-primary font-color-secondary mt-0"
                        >
                            {{ paragraph }}
                        </p>
                        <span
                            v-for="item in category"
                            class="font-family-primary font-color-darker bg-gray-200 px-3 mr-3 rounded-full"
                        >
                            {{ item }}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </a>
</template>

<script>
import { ItemHeader } from "../";

export default {
    components: {
        ItemHeader,
    },
    props: {
        title: String,
        paragraph: String,
        category: Array,
        src: String,
        path: String,
    },
};
</script>

<style lang="scss" scoped>
@import "./slideritem.scss";
</style>
