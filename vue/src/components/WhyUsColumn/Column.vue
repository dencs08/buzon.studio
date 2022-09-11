<template>
    <div class="px-0 md:px-3 lg:px-5 mb-4 md:mb-0 link-activate-wrapper">
        <a href="/oferta">
            <div class="offer-wrapper relative">
                <div class="flex justify-center">
                    <img src="../../assets/images/branding2.jpg" alt="" />
                </div>

                <div class="absolute top-[94%] my-0 ml-2 md:ml-0">
                    <a href="/oferta" class="font-family-header my-0">
                        <h3 class="my-0 link-bracket-display link-move">
                            {{ title }}
                        </h3>
                    </a>
                </div>
            </div>
            <div class="mt-3 mb:mt-6 lg:mt-10 pr-3 md:pr-0 ml-2 md:ml-0">
                <p class="font-color-dark">
                    {{ paragraph }}
                </p>
                <ul class="uppercase font-color-darker mt-2">
                    <li v-for="item in ul">
                        {{ item }}
                    </li>
                </ul>
            </div>
        </a>
    </div>
</template>

<script>
export default {
    props: {
        title: String,
        paragraph: String,
        ul: Array,
    },
};
</script>

<style lang="scss" scoped>
@import "./column.scss";
</style>
