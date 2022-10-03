<template>
    <component
        :is="this.defineTag()"
        :to="{ name: to }"
        :href="href"
        :class="{
            'underline-primary': primary && noUnderline === false,
            'underline-secondary': secondary && noUnderline === false,
            'link-primary': primary,
            'link-move': move,
            'text-highlight': isMouseOver,
            animating: (primary && isAnimating) || (secondary && isAnimating),
            'clip leading-none pl-5': split,
            active: isMouseOver,
        }"
        class="transitions cursor-pointer relative"
        @mouseover="animationStart"
        @animationend="animationEnd"
        @mouseleave="mouseLeave"
        ><span
            ref="text"
            @mouseover="animateCharIn"
            @mouseleave="animateCharOut"
            :class="{ arrow: point }"
            class=""
            >{{ text }}</span
        >
    </component>
</template>

let textToAnimate;
<script>
import SplitType from "split-type";
import gsap from "gsap";

export default {
    data() {
        return {
            isAnimating: false,
            isMouseOver: false,
        };
    },

    props: {
        to: String,
        href: String,
        text: String,
        primary: Boolean,
        secondary: Boolean,
        point: Boolean,
        move: Boolean,
        split: Boolean,

        noUnderline: {
            type: Boolean,
            default: () => false,
        },
    },

    mounted() {
        if (!this.split) return;
        const elementToSplit = this.$refs.text;
        const text = new SplitType(elementToSplit, { types: "chars" });
        const clone = elementToSplit.cloneNode(true);
        elementToSplit.parentNode.insertBefore(
            clone,
            elementToSplit.nextSibling
        );
        elementToSplit.parentNode.insertBefore(
            document.createElement("br"),
            elementToSplit.nextSibling
        );
        clone.classList.add("absolute");
        clone.classList.add("pointer-events-none");
        for (let i = 0; i < clone.children.length; i++) {
            const child = clone.children[i];
            child.classList.add("translate-y-[100%]");
            child.classList.add("italic");
            child.classList.add("pointer-events-none");
        }
    },

    methods: {
        defineTag() {
            if (this.to) {
                return "router-link";
            } else {
                return "a";
            }
        },
        animationStart() {
            this.isAnimating = true;
            this.isMouseOver = true;
        },
        animationEnd() {
            this.isAnimating = false;
        },
        mouseLeave() {
            this.isMouseOver = false;
        },
        animateCharIn() {
            if (!this.split) return;
            // if (this.isAnimating) return;
            this.isAnimating = true;
            let textToAnimate = this.$refs.text.children;
            let textToAnimateSecond =
                this.$refs.text.nextSibling.nextSibling.children;

            gsap.to(textToAnimate, {
                duration: 0.5,
                y: "-100%",
                x: "15px",
                stagger: 0.02,
                ease: "power2.out",
            });
            gsap.to(textToAnimateSecond, {
                duration: 0.45,
                y: "-100%",
                x: "15px",
                stagger: 0.02,
                ease: "power2",
                onComplete: () => {
                    this.isAnimating = false;
                },
            });
        },
        animateCharOut() {
            if (!this.split) return;
            // if (this.isAnimating) return;
            this.isAnimating = true;
            let textToAnimate = this.$refs.text.children;
            let textToAnimateSecond =
                this.$refs.text.nextSibling.nextSibling.children;

            gsap.to(textToAnimate, {
                duration: 0.5,
                y: 0,
                x: 0,
                stagger: 0.02,
                ease: "expo",
                delay: 0.2,
            });
            gsap.to(textToAnimateSecond, {
                duration: 1,
                y: "100%",
                x: 0,
                stagger: 0.02,
                ease: "expo",
                onComplete: () => {
                    this.isAnimating = false;
                },
            });
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./linkprimary.scss";
</style>
