<template>
    <section id="LandingPage">
        <div class="container pt-[15vh] section-mb">
            <h1 class="leading-[100%]">{{ h1 }}</h1>

            <h2 class="mb-5">
                {{ h2 }}
            </h2>

            <!-- <x-arrow /> -->
        </div>
    </section>
</template>

<script>
export default {
    props: {
        h1: String,
        h2: String,
    }
}
</script>

<style lang="scss">

</style>