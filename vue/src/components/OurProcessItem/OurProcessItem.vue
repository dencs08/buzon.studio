<template>
    <div class="link-activate-wrapper">
        <h4
            class="font-family-header font-color-secondary link-bracket-display link-move lh-0 leading-tight"
        >
            {{ title }}
        </h4>
        <p class="font-color-dark pr-0 md:pr-5">
            {{ paragraph }}
        </p>
    </div>
</template>

<script>
export default {
    props: {
        title: String,
        paragraph: String,
    },
};
</script>

<style scoped>
@import "./ourprocessitem.scss";
</style>
