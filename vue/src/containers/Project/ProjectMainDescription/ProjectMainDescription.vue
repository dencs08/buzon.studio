<template>
    <section class="container section-mb-s">
        <div class="grid grid-cols-2">
            <div class="pr-6 lg:pr-32 max-h-[80vh]">
                <h3 class="font-family-header">
                    Opis {{ $route.params.projectName }}
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro incidunt qui voluptates cum earum
                    sequi deserunt, at, est mollitia beatae quia modi? Debitis nulla a nobis ea qui explicabo ducimus?
                </p>
            </div>
            <div class="flex items-end justify-end">
                <div class="max-h-[80vh] aspect-[1/1]">
                    <img src="/src/assets/images/portfolio/bielanypark/bielanypark2.jpg"
                        class="w-full h-full object-cover aspect-[1/1]" alt="">
                </div>
            </div>
        </div>
    </section>
</template>
<script>
export default {

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