<template>
    <a ref="slot" @mouseover="mouseOver" @mouseleave="mouseLeave" :href="href"
        ><slot> </slot
    ></a>
</template>

<script>
export default {
    props: { href: String, isAnimating: Boolean },

    mounted() {},

    methods: {
        mouseOver() {
            // this.isAnimating = true;

            for (let i = 0; i < this.$refs.slot.children.length; i++) {
                let child = this.$refs.slot.children[i];

                if (child.hasAttribute("paragraph-span")) {
                    child.classList.remove("font-color-darker");
                    child.classList.add("font-color-primary");
                }
                if (child.hasAttribute("paragraph-link")) {
                }
            }
        },

        mouseLeave() {
            // this.isAnimating = true;

            for (let i = 0; i < this.$refs.slot.children.length; i++) {
                let child = this.$refs.slot.children[i];

                if (child.hasAttribute("paragraph-span")) {
                    child.classList.remove("font-color-primary");
                    child.classList.add("font-color-darker");
                }
                if (child.hasAttribute("paragraph-link")) {
                }
            }
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkparagraph.scss";
</style>
