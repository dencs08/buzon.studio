<template>
    <div ref="linkDiv" @mouseover="handleMouseOver" @animationend="animationEnd" @mouseleave="handleMouseLeave"
        :class="{'clip' : split, 'active': isMouseOver}" class="inline-block">
        <component ref="component" :is="this.defineTag()" :to="{ name: to }" :href="href" :class="{
            'underline-primary': primary && noUnderline === false,
            'underline-secondary': secondary && noUnderline === false,
            'link-primary': primary,
            'link-move': move,
            'text-highlight': isMouseOver,
            animating: (primary && isAnimating) || (secondary && isAnimating),
            'leading-none': split,
            active: isMouseOver,
            'reveal': !noReveal,
            'before:opacity-0': (!wasInView && !noReveal)
        }" class="transitions cursor-pointer">
            <span ref="text" class="linkPrimaryText" :class="{ arrow: point, 'reveal': !noReveal }">
                {{ text }}
            </span>
        </component>
    </div>

</template>

<script>
import { splitCloneToChars } from "../../../../js/cloneSplit";
import { animateCharsIn } from "../../../../js/utilities/animateChars.js";

import { textRevealInline } from '../../../../js/textReveal'

export default {
    data() {
        return {
            isAnimating: false,
            isMouseOver: false,
            wasInView: false,
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
        noReveal: Boolean,
        splitMove: Number,

        noUnderline: {
            type: Boolean,
            default: () => false,
        },
    },

    setup() {
        let splitAnimation;

        return { splitAnimation };
    },

    mounted() {
        this.attachObserver()
        if (!this.noReveal) textRevealInline(this.$refs.text, this.$refs.linkDiv, true, false, false, false);

        if (!this.split) return;
        const elementToSplit = this.$refs.text;
        splitCloneToChars(elementToSplit);

        this.splitAnimation = animateCharsIn(
            this.$refs.text.children,
            this.$refs.text.nextSibling.children,
            this.splitMove
        );
    },

    beforeUnmount() {
        this.observer.disconnect();
    },

    methods: {
        defineTag() {
            if (this.to) {
                return "router-link";
            } else {
                return "a";
            }
        },

        handleMouseOver() {
            this.isMouseOver = true;
            this.animationStart();
        },
        handleMouseLeave() {
            this.isMouseOver = false;

            if (!this.split) return;
            this.splitAnimation.reverse();
        },

        animationStart() {
            this.isMouseOver = true;
            this.isAnimating = true;

            if (!this.split) return;
            this.splitAnimation.play();
        },
        animationEnd() {
            this.isAnimating = false;
        },

        onClassChange(classAttrValue) {
            const classList = classAttrValue.split(' ');
            if (classList.includes('wasInView')) {
                this.wasInView = true;
            }
        },

        attachObserver() {
            this.observer = new MutationObserver(mutations => {
                for (const m of mutations) {
                    const newValue = m.target.getAttribute(m.attributeName);
                    this.$nextTick(() => {
                        this.onClassChange(newValue, m.oldValue);
                    });
                }
            });

            this.observer.observe(this.$refs.text, {
                attributes: true,
                attributeOldValue: true,
                attributeFilter: ['class'],
            });
        }
    },
};
</script>

<style lang="scss" scoped>
@import "./linkprimary.scss";

span.reveal {
    visibility: hidden;
}
</style>
