<template>
    <div class="relative mb-6 lg:mb-0 lg:ml-5 lg:mr-20 lg:inline-block lg:w-[50vw] xl:w-[45vw]">
        <ImageShowcase :title="title" :info="info" :category="category" />
    </div>
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
