<template>
    <div class="grid content-center w-[20vw]">
        <img :src="src" :alt="`branding (logotyp) ${name}`" width="100%" height="100%" class="mx-auto max-h-[10vh]" />
    </div>
</template>

<script>
export default {
    props: {
        name: String,
    },

    computed: {
        src() {
            return `/src/assets/images/logos/client/${this.name}.svg`;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./collabitem.scss";
</style>
