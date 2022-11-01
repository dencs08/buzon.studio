<template>
    <section id="landing-page" class="section-mb-s mt-[15vh]">
        <div class="container relative">
            <h1 class="absolute top-[-5%] z-50">{{ name }}</h1>
            <div class="image-wrapper w-full h-auto overflow-hidden aspect-[16/9] duration-300">
                <img :src="image()" class="w-full h-full fit-cover" alt="" />
            </div>
        </div>
    </section>
</template>

<script>
export default {
    props: { name: String },

    methods: {
        image() {
            return `../src/assets/images/portfolio/${this.name}/${this.name}_portfolio.jpg`;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./projecthero.scss";
</style>
