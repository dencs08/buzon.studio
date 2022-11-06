<template>
    <section id="offer" class="section-mb">
        <div class="container mb-8 lg:mb-12 xl:mb-20">
            <div class="mb-8 md:mb-12">
                <SectionHeader v-if="header" mainHeader="Działamy po to abyś się rozwijał" />
            </div>
        </div>

        <div v-if="contactParagraph" class="container contact">
            <LinkParagraph @mouseover="$refs.link1.animationStart()" @mouseleave="$refs.link1.handleMouseLeave()"
                to="Kontakt">
                <LinkPrimary to="Kontakt" text="Napisz do nas" :primary="true" ref="link1" />{{ }}

                <span class="font-color-darker duration-200">
                    i stwórzmy coś razem.</span>
            </LinkParagraph>
        </div>
    </section>
</template>

<script>
import {
    // Column,
    LinkPrimary,
    SectionHeader,
    LinkParagraph,
} from "../../components";
export default {
    props: {
        header: {
            type: Boolean,
            default: () => false,
        },
        contactParagraph: {
            type: Boolean,
            default: () => false,
        },
        buttons: {
            type: Boolean,
        },
    },
    components: {
        // Column,
        LinkPrimary,
        SectionHeader,
        LinkParagraph,
    },
};
</script>

<style lang="scss" scoped>
@import "./whyus.scss";
</style>
