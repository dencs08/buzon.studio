<template>
    <section ref="imagesSection" v-if="images.length > 0" id="images" class="section-mb-s">
        <div class="container">
            <div class="mb-4 md:mb-10 lg:mb-16">
                <div v-if="images[0]" class="overflow-hidden aspect-[22.5/10]">
                    <img ref="img1" :src="images[0]" class="object-cover min-w-full min-h-full h-full duration-500"
                        alt="" />
                </div>
            </div>
            <div class="grid grid-cols-2">
                <div class="space-y-4 md:space-y-10 lg:space-y-16 [&>*]:pr-2 md:[&>*]:pr-5 lg:[&>*]:pr-8">
                    <div v-if="images[1]" class="aspect-[2/1]">
                        <img ref="img2" :src="images[1]" class="object-cover w-full h-full" alt="">
                    </div>
                    <div v-if="images[2]" class="aspect-[4/3]">
                        <img ref="img3" :src="images[2]" class="object-cover w-full h-full" alt="">
                    </div>
                </div>
                <div>
                    <div v-if="images[3]" class="pl-2 md:pl-5 lg:pl-8 h-full">
                        <img ref="img4" :src="images[3]" class="object-cover w-full h-full" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import { elementReveal } from '../../../js/textReveal'

export default {
    props: {
        name: String,
        images: Array,
    },
    mounted() {
        // setTimeout(() => {
        //     elementReveal(this.$refs.img1, this.$refs.imagesSection);
        //     elementReveal(this.$refs.img2, this.$refs.imagesSection);
        //     elementReveal(this.$refs.img3, this.$refs.imagesSection);
        //     elementReveal(this.$refs.img4, this.$refs.imagesSection);
        // }, 1000);
    }
}
</script>

<style lang="scss" scoped>
@import "./projectimages.scss";
</style>
