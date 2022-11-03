<template>
    <section v-if="images" id="images" class="section-mb-s">
        <div class="container">
            <div class="mb-4 md:mb-10 lg:mb-16">
                <div v-if="images[0]" class="overflow-hidden aspect-[22.5/10]">
                    <img :src="src()" class="object-cover min-w-full min-h-full h-full duration-500" alt="" />
                </div>
            </div>
            <div class="grid grid-cols-2">
                <div class="space-y-4 md:space-y-10 lg:space-y-16 [&>*]:pr-2 md:[&>*]:pr-5 lg:[&>*]:pr-8">
                    <div v-if="images[1]" class="aspect-[2/1]">
                        <img :src="src()" class="object-cover w-full h-full" alt="">
                    </div>
                    <div v-if="images[2]" class="aspect-[4/3]">
                        <img :src="src()" class="object-cover w-full h-full" alt="">
                    </div>
                </div>
                <div>
                    <div v-if="images[3]" class="pl-2 md:pl-5 lg:pl-8 h-full">
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
        images: Array,
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
