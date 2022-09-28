<template>
    <a class="LinkParagraph" ref="slot" :href="href"><slot> </slot></a>
</template>

<script>
export default {
    props: { href: String, isAnimating: Boolean, activeFontColor: String },

    mounted() {
        let elements = this.$refs.slot;
        let childs = elements.children;
        let _this = this;

        for (let i = 0; i < childs.length; i++) {
            let child = childs[i];

            child.addEventListener("mouseover", () => {
                for (let j = 0; j < child.children.length; j++) {
                    let element = child.children[j];
                    if (element.tagName == "SPAN") {
                        _this.addClass(element);
                    } else {
                        // console.log(_this.$children);
                        // element.setAttribute("isAnimating", "true");
                        // console.log(this.$parent.$slots.default);
                        // this.$parent.$refs.PrimaryLink.animationStart();
                        // _this.accessChildren();
                    }
                }
            });

            child.addEventListener("mouseleave", () => {
                for (let j = 0; j < child.children.length; j++) {
                    let element = child.children[j];
                    if (element.tagName == "SPAN") {
                        _this.removeClass(element);
                    } else {
                        // console.log(_this.$children);
                        // element.setAttribute("isAnimating", "false");
                        // console.log(this.$parent.$slots.default);
                        // this.$parent.$refs.PrimaryLink.animationEnd();
                        // _this.accessChildren();
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
