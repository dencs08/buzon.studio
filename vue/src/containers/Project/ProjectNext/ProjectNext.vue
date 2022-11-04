<template>
    <section>
        <div class="container mb-10 mt-16 sm:mt-0">
            <div class="hidden sm:block">
                <h5 class="float-right mb-10 font-color-dark">Zobacz nastepny projekt</h5>
            </div>
            <div class="relative">
                <div class="link absolute top-[-25%] sm:top-[-10%]">
                    <LinkPrimary class="uppercase font-color-primary font-family-header leading-none" :text="nextName"
                        :split="true" :point="true" />
                </div>
                <div class="aspect-[3/1]">
                    <img :src="nextImage" class="object-cover w-full h-full" alt="">
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import { LinkPrimary } from '../../../components'

export default {
    props: {
        nextName: String,
        nextImage: String,
    },
    components: {
        LinkPrimary
    },
}
</script>

<style lang="scss" scoped>
h5 {
    font-size: clamp(1rem, 1.5vw, 5rem);
}

.link {
    font-size: clamp(1rem, 12.5vw, 20rem);
}
</style>