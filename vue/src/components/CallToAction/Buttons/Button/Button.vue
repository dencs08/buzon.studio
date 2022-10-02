<template>
    <button
        class="btn"
        :class="[setButtonClass, setButtonSize, { arrow: arrow }]"
    >
        {{ text }}
    </button>
</template>

<script>
export default {
    props: {
        text: String,
        primary: Boolean,
        secondary: Boolean,
        submit: Boolean,
        small: Boolean,
        normal: Boolean,
        big: Boolean,
        arrow: Boolean,
    },

    computed: {
        setButtonClass() {
            if (!this.primary && !this.secondary && !this.submit)
                return "btn-primary";
            if (this.secondary) return "btn-secondary";
            return "btn-submit";
        },
        setButtonSize() {
            if (!this.small && !this.normal && !this.big) return "normal";
            if (this.small) return "small";
            return "big";
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./button.scss";
</style>
