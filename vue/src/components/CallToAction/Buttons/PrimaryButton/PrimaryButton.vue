<template>
    <button
        class="btn btn-primary"
        :class="`${small ? 'small' : ''} ${normal ? 'normal' : ''} ${
            big ? 'big' : ''
        }`"
    >
        {{ text }}
    </button>
</template>

<script>
export default {
    props: {
        text: String,

        small: {
            type: Boolean,
        },
        normal: {
            type: Boolean,
        },
        big: {
            type: Boolean,
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./primarybutton.scss";
</style>
