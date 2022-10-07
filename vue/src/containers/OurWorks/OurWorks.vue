<template>
    <section data-scroll-section id="portfolio">
        <div id="portfolio-content" class="container mt-5">
            <SectionHeader headerLine="Nasze prace" mainHeader="Projekty z, których jesteśmy dumni" class="mb-5" />
        </div>
        <OurWorksSlider />
        <div class="portfolio-container container">
            <LinkPrimary to="Portfolio" text="Więcej prac" :primary="true" :point="true" class="my-4 uppercase" />
        </div>
    </section>
</template>

<script>
import { LinkPrimary, SectionHeader, OurWorksSlider } from "../../components";

export default {
    components: {
        OurWorksSlider,
        LinkPrimary,
        SectionHeader,
    },
};
</script>

<style lang="scss" scoped>
@import "./ourworks.scss";
</style>
