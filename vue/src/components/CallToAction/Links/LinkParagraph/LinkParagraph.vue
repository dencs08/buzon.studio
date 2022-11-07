<template>
    <span ref="slot" @mouseover="this.mouseOver()" @mouseleave="this.mouseLeave()">
        <component :is="this.defineTag()" :to="{ name: to }" :href="href" class="cursor-pointer">
            <slot> </slot>
        </component>
    </span>
</template>

<script>
import { textReveal } from '../../../../js/textReveal'

export default {
    props: {
        to: String,
        href: String,
        isAnimating: Boolean,
        noReveal: Boolean,

        activeFontColor: {
            type: String,
            default: "font-color-secondary",
        },
        normalFontColor: {
            type: String,
            default: "font-color-darker",
        },
    },

    mounted() {
        if (!this.noReveal) textReveal(this.$refs.slot, this.$refs.slot, true, false, false, false);
    },

    methods: {
        defineTag() {
            if (this.to) {
                return "router-link";
            } else {
                return "a";
            }
        },

        addClass(element) {
            element.classList.remove(this.normalFontColor);
            element.classList.add(this.activeFontColor);
        },
        removeClass(element) {
            element.classList.remove(this.activeFontColor);
            element.classList.add(this.normalFontColor);
        },

        mouseOver() {
            if (!this.$refs.slot) return;
            let childs = this.$refs.slot.children;

            for (let i = 0; i < childs.length; i++) {
                let child = childs[i];
                for (let j = 0; j < child.children.length; j++) {
                    let element = child.children[j];
                    if (
                        element.tagName.toLowerCase() == "span" &&
                        element.classList.contains(this.normalFontColor)
                    ) {
                        this.addClass(element);
                    }
                }
            }
        },
        mouseLeave() {
            if (!this.$refs.slot) return;
            let childs = this.$refs.slot.children;

            for (let i = 0; i < childs.length; i++) {
                let child = childs[i];
                for (let j = 0; j < child.children.length; j++) {
                    let element = child.children[j];
                    if (
                        element.tagName.toLowerCase() == "span" &&
                        element.classList.contains(this.activeFontColor)
                    ) {
                        this.removeClass(element);
                    }
                }
            }
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkparagraph.scss";
</style>
