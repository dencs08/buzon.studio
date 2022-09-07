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
                <SliderItem
                    title="NAME1"
                    paragraph="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam."
                    :category="['test1', 'test2', 'test3']"
                    src="src/assets/images/portfolio/danfit/danfit_portfolio.jpg"
                    path="/portfolio/test1"
                />
                <SliderItem
                    title="NAME13"
                    paragraph="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                    :category="['test14', 'test24', 'test34']"
                    src="src/assets/images/portfolio/bielanypark/bielanypark_portfolio.jpg"
                    path="/portfolio/test2"
                />
                <SliderItem
                    title="NAME12"
                    paragraph="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                    :category="['test13', 'test23', 'test33']"
                    src="src/assets/images/portfolio/komb/komb_portfolio.jpg"
                    path="/portfolio/test3"
                />
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

<style scoped>
@import "./ourworks.scss";
</style>
