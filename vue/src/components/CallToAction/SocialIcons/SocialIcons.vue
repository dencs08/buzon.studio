<template>
    <div ref="icons" :class="defineSize()">
        <router-link to="Start" class="icon-wrapper">
            <div class="inline-block">
                <LogoWhite />
            </div>
        </router-link>
        <a :href="fb" rel="noreferrer" target="_blank" class="icon-wrapper">
            <div class="inline-block">
                <FB />
            </div>
        </a>
        <a :href="ig" rel="noreferrer" target="_blank" class="icon-wrapper">
            <div class="inline-block">
                <IG />
            </div>
        </a>
    </div>
</template>

<script>
let fb = import.meta.env.VITE_FB;
let ig = import.meta.env.VITE_IG;

import { elementReveal } from '../../../js/textReveal'

import { FB, IG, LogoWhite } from "../../";
export default {
    data() {
        return {
            fb: fb,
            ig: ig,
        };
    },

    props: {
        size: String,
        noReveal: Boolean,
    },

    components: {
        LogoWhite,
        FB,
        IG,
    },

    mounted() {
        if (!this.noReveal) elementReveal(this.$refs.icons, this.$refs.icons);
    },

    methods: {
        defineSize() {
            if (!this.size || this.size == "normal") {
                return "normal";
            }
            if (this.size == "small") {
                return "small";
            }
            if (this.size == "big") {
                return "big";
            }
        },
    },
};
</script>
<style lang="scss">
@import "./socialicons..scss";
</style>
