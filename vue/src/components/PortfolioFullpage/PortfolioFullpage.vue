<template>
    <div class="mt-10 lg:mt-0">
        <div class="mb-6 md:mb-10 lg:mb-0 link-activate-wrapper">
            <a :href="url">
                <div class="portfolio-wrapper">
                    <a :href="url" class="portfolio-item mx-auto flex">
                        <img
                            :src="image"
                            alt="tworzenie logo i brandingu dla marki danfit"
                            class="portfolio_image-item"
                        />
                    </a>

                    <div class="info-header my-0">
                        <a
                            :href="url"
                            class="gs gs_fromTop font-family-header my-0"
                        >
                            <ItemHeader
                                :text="title"
                                :big="true"
                                :move="true"
                                headerClass="absolute top-[77%] left-[-2%] z-[2] inline-block"
                            />
                        </a>
                    </div>
                    <div
                        class="info mt-6 mb:mt-1 lg:mt-2 pr-3 md:pr-0 pl-1 lg:pl-2"
                    >
                        <p class="font-color-secondary mb-1">
                            {{ info }}
                        </p>
                        <span v-for="item in category" class="font-color-dark">
                            {{ item }},
                        </span>
                    </div>
                </div>
            </a>
        </div>
    </div>
</template>

<script>
import { ItemHeader } from "../";

export default {
    props: {
        title: String,
        info: String,
        category: Array,
    },

    computed: {
        url() {
            return `/portfolio/${this.title}`;
        },
        image() {
            return `/src/assets/images/portfolio/${this.title}/${this.title}_portfolio.jpg`;
        },
    },

    components: {
        ItemHeader,
    },
};
</script>

<style lang="scss">
@import "./portfoliofullpage.scss";
</style>
