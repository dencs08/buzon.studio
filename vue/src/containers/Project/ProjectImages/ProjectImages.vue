<template>
    <section v-if="imagesCount" id="images" class="section-mb-s">
        <div class="container">
            <div class="mb-16">
                <div class="overflow-hidden aspect-[22.5/10]">
                    <img :src="src()" class="object-cover min-w-full min-h-full h-full duration-500" alt="" />
                </div>
            </div>
            <div class="grid grid-cols-2">
                <div class="space-y-16 [&>*]:pr-8">
                    <div class="aspect-[2/1]">
                        <img src="/src/assets/images/portfolio/bielanypark/bielanypark8.jpg"
                            class="object-cover w-full h-full" alt="">
                    </div>
                    <div class="aspect-[4/3]">
                        <img src="/src/assets/images/portfolio/bielanypark/bielanypark7.jpg"
                            class="object-cover w-full h-full" alt="">
                    </div>
                </div>
                <div>
                    <div class="pl-8 h-full">
                        <img :src="src()" class="object-cover w-full h-full" alt="">
                    </div>
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
            return `/src/assets/images/portfolio/${this.name}/${this.name}1.jpg`;
        },
    }
}
</script>

<style lang="scss" scoped>
@import "./projectimages.scss";
</style>
