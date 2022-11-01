<template>
    <section id="info" class="section-mb-s">
        <div class="container">

            <div class="lg:w-4/6 my-20">
                <h4 class="font-family-primary font-color-primary">
                    {{ info }}
                </h4>
            </div>

            <div class="md:grid grid-cols-12 mb-5">

                <div class="md:pr-10 col-span-6">
                    <img src="/src/assets/images/portfolio/bielanypark/bielanypark2.jpg" alt="">
                </div>

                <div v-if="responsibilities" class="col-span-4">
                    <div>
                        <div>
                            <h5 class="font-family-header font-color-primary my-0 uppercase">
                                Co zrobiliśmy
                            </h5>
                        </div>
                        <ul v-for="item in responsibilities" class="dots font-color-dark">
                            <li class="mt-2">{{ item }}</li>
                        </ul>
                    </div>

                    <div v-if="website">
                        <div class="md:mt-16 lg:mt-40">
                            <span class="uppercase website font-color-dark">Sprawdź stronę
                                <LinkPrimary :href="website" :primary="true" :text="website" target="_blank"
                                    rel="noopener" />
                            </span>
                        </div>
                    </div>
                </div>

                <div v-if="goals" class="col-span-2">
                    <div>
                        <div>
                            <h5 class="font-family-header font-color-primary my-0 uppercase">
                                Cel
                            </h5>
                        </div>
                        <ul v-for="item in goals" class="dots font-color-dark">
                            <li class="mt-2">{{ item }}</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
</template>

<script>
import { LinkPrimary } from '../../../components'

export default {
    props: {
        name: String,
        info: String,
        goals: Array,
        responsibilities: Array,
        website: String,
    },

    components: {
        LinkPrimary
    }
}
</script>

<style lang="scss" scoped>
@import "./projectinfo.scss";
</style>
