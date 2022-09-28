<template>
    <a class="LinkParagraph" ref="slot" :href="href"><slot> </slot></a>
</template>

<script>
export default {
    props: {
        href: String,
        isAnimating: Boolean,
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
        let elements = this.$refs.slot;
        let childs = elements.children;
        let _this = this;

        for (let i = 0; i < childs.length; i++) {
            let child = childs[i];

            child.addEventListener("mouseover", () => {
                for (let j = 0; j < child.children.length; j++) {
                    let element = child.children[j];
                    if (
                        element.tagName == "SPAN" &&
                        element.classList.contains(_this.normalFontColor)
                    ) {
                        _this.addClass(element);
                    }
                }
            });

            child.addEventListener("mouseleave", () => {
                for (let j = 0; j < child.children.length; j++) {
                    let element = child.children[j];
                    if (
                        element.tagName == "SPAN" &&
                        element.classList.contains(_this.activeFontColor)
                    ) {
                        _this.removeClass(element);
                    }
                }
            });
        }
    },

    methods: {
        addClass(element) {
            element.classList.remove("font-color-darker");
            element.classList.add(this.activeFontColor);
        },
        removeClass(element) {
            element.classList.remove(this.activeFontColor);
            element.classList.add("font-color-darker");
        },
        accessChildren() {
            console.log("OMG");
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkparagraph.scss";
</style>
