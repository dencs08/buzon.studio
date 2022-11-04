<template>
    <div class="mb-6 md:mb-10 lg:mb-0 mt-10 lg:mt-0">
        <ImageShowcase :title="title" :info="info" :category="category" :long="long" :horizontal="true" />
    </div>
</template>

<script>
import { ImageShowcase } from "../";

export default {
    props: {
        title: String,
        info: String,
        category: Array,
        long: Boolean,
    },

    components: {
        ImageShowcase,
    },
};
</script>

<style lang="scss" scoped>
@import "./portfolioitem.scss";
</style>
