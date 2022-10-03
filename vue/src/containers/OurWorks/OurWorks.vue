<template>
    <section id="portfolio">
        <div id="portfolio-content" class="container mt-5">
            <SectionHeader
                headerLine="Nasze prace"
                mainHeader="Projekty z, których jesteśmy dumni"
                class="mb-5"
            />
        </div>
        <div
            class="grid-item main-track bg-transparent p-0 overflow-hidden mb-10 lg:mb-16"
        >
            <div
                cursor-action
                data-cursor-label="↔"
                slide-track
                class="slide-track w-full overflow-hidden whitespace-nowrap bg-transparent cursor-grab"
            >
                <SliderItem
                    title="danfit"
                    info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam."
                    :category="['test1', 'test2', 'test3']"
                />
                <SliderItem
                    title="bielanypark"
                    info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                    :category="['test14', 'test24', 'test34']"
                />
                <SliderItem
                    title="castle3d"
                    info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                    :category="['test13', 'test23', 'test33']"
                />
            </div>
        </div>
        <div class="portfolio-container container">
            <LinkPrimary
                to="Portfolio"
                text="Więcej prac"
                :primary="true"
                :point="true"
                class="my-4 uppercase"
            />
        </div>
    </section>
</template>

<script>
import { SliderItem, LinkPrimary, SectionHeader } from "../../components";
export default {
    components: {
        SliderItem,
        LinkPrimary,
        SectionHeader,
    },
};
</script>

<style lang="scss" scoped>
@import "./ourworks.scss";
</style>
