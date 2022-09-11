<template>
    <section id="landing-page">
        <div class="container relative">
            <div>
                <h1 class="absolute top-[-5%] z-50">{{ name }}</h1>
                <div class="image-wrapper">
                    <img :src="image" alt="" />
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    props: { name: String, image: String },
};
</script>

<style lang="scss" scoped>
@import "./projecthero.scss";
</style>
