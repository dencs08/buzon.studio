<template>
    <section id="portfolio">
        <div id="portfolio-content" class="container mt-5">
            <h4 class="my-0 headerline">Nasze prace</h4>
            <h3 class="mt-1 mb-3">Projekty z, których jesteśmy dumni</h3>
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
                <SliderItem />
                <SliderItem />
                <SliderItem />
            </div>
        </div>
        <div class="portfolio-btn-container container">
            <div>
                <a
                    href="/portfolio"
                    class="link-primary underline-primary link-arrow my-4 text-uppercase fw-medium"
                    >Więcej prac</a
                >
            </div>
        </div>
    </section>
</template>

<script>
import { SliderItem } from "../../components";
export default {
    components: {
        SliderItem,
    },
};
</script>

<style>
@import "./ourworks.scss";
</style>
