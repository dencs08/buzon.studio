<template>
    <a cursor-expand href="/portfolio/name">
        <div
            class="track-item relative mb-6 md:ml-5 md:mr-20 md:inline-block lg:mb-0 lg:w-5/12 link-activate-wrapper"
        >
            <ImageShowcase :title="title" :info="info" :category="category" />
        </div>
    </a>
</template>

<script>
import { ItemHeader, ImageShowcase } from "../";

export default {
    components: {
        ItemHeader,
        ImageShowcase,
    },
    props: {
        title: String,
        info: String,
        category: Array,
    },
};
</script>

<style lang="scss" scoped>
@import "./slideritem.scss";
</style>
