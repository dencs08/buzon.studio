<template>
    <div class="link-activate-wrapper">
        <!-- <h4
            class="font-family-header font-color-secondary link-bracket-display link-move lh-0 leading-tight"
        >
            {{ title }}
        </h4> -->

        <ItemHeader
            :text="title"
            :small="true"
            :move="true"
            headerClass="font-color-secondary mb-2 w-fit"
        />

        <p class="font-color-dark pr-0 md:pr-5">
            {{ paragraph }}
        </p>
    </div>
</template>

<script>
import { ItemHeader } from "../";

export default {
    props: {
        title: String,
        paragraph: String,
    },
    components: {
        ItemHeader,
    },
};
</script>

<style lang="scss" scoped>
@import "./ourprocessitem.scss";
</style>
