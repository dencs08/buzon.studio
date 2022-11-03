<template>
    <section v-if="text" class="container section-mb-s">
        <div class="xs:grid xs:grid-cols-2">
            <div class="mb-5 xs:mb-0 pr-6 lg:pr-32 max-h-[80vh]">
                <h3 class="font-family-header">
                    Opis {{ $route.params.projectName }}
                </h3>
                <p>
                    {{ text }}
                </p>
            </div>
            <div class="flex items-center justify-end">
                <div class="max-h-[80vh] h-full">
                    <img :src="image" class="w-full h-full object-cover aspect-[1/1]" alt="">
                </div>
            </div>
        </div>
    </section>
</template>
<script>
export default {
    props: {
        image: String,
        text: String,
    }
}
</script>
<style lang="scss" scoped>
h3 {
    font-size: clamp(1.2rem, 4vw, 10rem);
}

p {
    font-size: clamp(1rem, 1.35vw, 10rem);
}
</style>