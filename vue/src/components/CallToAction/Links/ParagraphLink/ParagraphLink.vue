<template>
    {{ texts }}
    <a href="/portfolio" class="link-primary underline-primary fw-bold">{{
        links
    }}</a>
    {{ texts }}
    <a href="/portfolio" class="link-primary underline-primary fw-bold">{{
        links
    }}</a>
    {{ texts }}
</template>

<script>
export default {
    props: {
        links: Array,
        texts: Array,
    },
};
</script>

<style scoped>
@import "./paragraphlink.scss";
</style>
