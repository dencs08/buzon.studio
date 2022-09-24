<template>
    <div>
        <h4 :class="{ headerline: noAccent === false }">{{ headerLine }}</h4>
        <h3 :class="{ big: big, break: wordBreak }">{{ mainHeader }}</h3>
    </div>
</template>

<script>
export default {
    props: {
        headerLine: String,
        mainHeader: String,
        noAccent: {
            type: Boolean,
            default: () => false,
        },

        big: {
            type: Boolean,
            default: () => false,
        },

        wordBreak: {
            type: Boolean,
            default: () => false,
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./sectionheader.scss";
</style>
