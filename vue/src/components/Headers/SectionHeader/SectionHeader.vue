<template>
    <div ref="headerWrapper" class="headerWrapper">
        <h4 ref="h4" class="sectionHeaderline">
            <span ref="headerLine" :class="{ headerline: noAccent === false }">
                {{ headerLine }}
            </span>
        </h4>
        <h3 class="sectionHeader" :class="{ big: big, break: wordBreak }">
            <span ref="header">
                {{ mainHeader }}
            </span>
        </h3>
    </div>
</template>

<script>
import { textReveal } from '../../../js/textReveal'

export default {
    props: {
        headerLine: String,
        mainHeader: String,
        noReveal: Boolean,
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

    mounted() {
        if (!this.noReveal) textReveal(this.$refs.headerLine, this.$refs.headerWrapper, true, false, false, false);
        if (!this.noReveal) textReveal(this.$refs.header, this.$refs.headerWrapper, true, false, false, false);
    },
};
</script>

<style lang="scss" scoped>
@import "./sectionheader.scss";

//for gsap visibility
.headerWrapper span {
    visibility: hidden;

    --pseudoOpacity: 0;

    &:before {
        opacity: var(--pseudoOpacity);
    }
}
</style>
