<template>
    <section v-if="imagesCount" id="images">
        <div class="container">
            <div class="portfolio_image_wrapper">
                <div v-for="item in imagesCount">
                    <img :src="src()" alt="" />
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    setup() {
        let imageNumber = 0;
        return {
            imageNumber
        }
    },
    props: {
        name: String,
        imagesCount: Number,
    },

    methods: {
        src() {
            this.imageNumber++;
            let number = this.imageNumber;
            return `/src/assets/images/portfolio/${this.name}/${this.name}${this.imageNumber}.jpg`;
        },
    }
}
</script>

<style lang="scss" scoped>
@import "./projectimages.scss";
</style>
