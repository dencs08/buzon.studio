<template>
    <div class="mb-6 md:mb-10 lg:mb-0 mt-10 lg:mt-0">
        <ImageShowcase @click="onMouseClick" ref="el" :title="title" :info="info" :category="category" :long="long"
            :horizontal="true" class="imageShowcase" />
    </div>
</template>

<script>
import { ImageShowcase } from "../";
import { gsap } from 'gsap'
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

    methods: {
        onMouseClick() {
            const el = this.$refs.el.$el;
            const imgWrapper = el.childNodes[0].childNodes[0];
            const img = imgWrapper.childNodes[0];

            // this.$refs.el.$el
        }
    }
};
</script>

<style lang="scss" scoped>
@import "./portfolioitem.scss";
</style>
