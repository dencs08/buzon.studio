<template>
    <div ref="imageWrapper" class="relative mb-6 lg:mb-0 lg:ml-5 lg:mr-20 lg:inline-block lg:w-[50vw] xl:w-[45vw]">
        <ImageShowcase ref="imageShowcase" :title="title" :info="info" :category="category" class="reveal" />
    </div>
</template>

<script>
import { ItemHeader, ImageShowcase } from "../";
import { elementReveal } from "../../js/textReveal";

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

    mounted() {
        if (!window.matchMedia("(max-width: 1024px)").matches) return;
        setTimeout(() => {
            elementReveal(this.$refs.imageShowcase.$el, this.$refs.imageWrapper);
        }, 500);
    }
};
</script>

<style lang="scss" scoped>
@import "./slideritem.scss";

@media screen and (max-width: 1024px) {
    .reveal {
        visibility: hidden;
    }
}
</style>
