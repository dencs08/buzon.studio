<template>
    <div
        class="px-0 md:px-3 lg:px-5 mb-4 md:mb-0 link-activate-wrapper md:h-[80vh]"
    >
        <a href="/oferta">
            <div class="offer-wrapper relative">
                <div
                    :class="{ 'flex-row-reverse': reverse }"
                    class="mb-10 md:mb-0 sm:flex justify-center items-center"
                >
                    <div
                        class="mb-3 md:mb-0 flex basis-11/12 px-2"
                        :class="{
                            'justify-start': reverse === false,
                            'justify-end': reverse,
                        }"
                    >
                        <img src="../../assets/images/branding.png" alt="" />
                    </div>
                    <div class="basis-11/12 px-8">
                        <div class="my-0 ml-2 md:ml-4">
                            <a href="/oferta">
                                <ItemHeader
                                    :text="title"
                                    :normal="true"
                                    :move="true"
                                    headerClass="inline-block"
                                />
                            </a>
                            <div class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                                <p class="font-color-dark">
                                    {{ paragraph }}
                                </p>
                                <ul class="uppercase font-color-darker mt-2">
                                    <li v-for="item in ul">
                                        {{ item }}
                                    </li>
                                </ul>
                                <PrimaryButton
                                    text="Oferta"
                                    :normal="true"
                                    class="mt-6"
                                    v-if="buttons"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</template>

<script>
import { ItemHeader, PrimaryButton } from "../";

export default {
    props: {
        title: String,
        paragraph: String,
        ul: Array,

        reverse: {
            type: Boolean,
            default: false,
        },
        buttons: {
            type: Boolean,
        },
    },
    components: {
        ItemHeader,
        PrimaryButton,
    },
};
</script>

<style lang="scss" scoped>
@import "./column.scss";
</style>
