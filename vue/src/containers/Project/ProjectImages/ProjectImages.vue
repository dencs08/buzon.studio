<template>
    <section data-scroll-section v-if="images" id="images">
        <div class="container">
            <div class="portfolio_image_wrapper">
                <img src="images/portfolio/' . $name . '/' . $image . '.jpg" alt="" />
            </div>
        </div>
    </section>
</template>

<script>
export default {
    props: {
        name: String,
        images: Array,
    }
}
</script>

<style lang="scss" scoped>
@import "./projectimages.scss";
</style>
