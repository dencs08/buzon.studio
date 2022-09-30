<template>
    <div class="mt-10 lg:mt-0">
        <div class="mb-6 md:mb-10 lg:mb-0">
            <ImageShowcase :title="title" :info="info" :category="category" />
        </div>
    </div>
</template>

<script>
import { ImageShowcase } from "../";

export default {
    props: {
        title: String,
        info: String,
        category: Array,
    },

    components: {
        ImageShowcase,
    },
};
</script>

<style lang="scss" scoped>
@import "./portfoliofullpage.scss";
</style>
