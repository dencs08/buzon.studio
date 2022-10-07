<template>
    <section data-scroll-section id="info" class="mb-10">
        <div class="container">
            <div>
                <h3 class="headerline font-family-header mb-2">
                    Podsumowanie realizacji
                </h3>
            </div>
            <div class="grid grid-cols-3 mb-5">
                <div>
                    <div>
                        <div>
                            <h4 class="font-family-primary font-color-primary my-0">
                                Opis
                            </h4>
                        </div>
                        <div>
                            <p>
                                {{ info }}
                            </p>
                        </div>
                    </div>
                </div>

                <div v-if="responsibilities">
                    <div>
                        <div>
                            <h4 class="font-family-primary font-color-primary my-0">
                                Nasze zadanie
                            </h4>
                        </div>
                        <ul v-for="item in responsibilities">
                            <li>{{ item }}</li>
                        </ul>
                    </div>
                </div>

                <div v-if="goals">
                    <div>
                        <div>
                            <h4 class="font-family-primary font-color-primary my-0">
                                Cel
                            </h4>
                        </div>
                        <ul v-for="item in goals">
                            <li>{{ item }}</li>
                        </ul>
                    </div>
                </div>

            </div>
            <div v-if="website">
                <div>
                    <span class="uppercase website font-color-dark">Sprawdź stronę
                        <a target="_blank" rel="noopener" :href="website"
                            class="link-primary underline-primary text-uppercase">{{website}}.pl</a></span>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    props: {
        name: String,
        info: String,
        goals: Array,
        responsibilities: Array,
        website: String,
    }
}
</script>

<style lang="scss" scoped>
@import "./projectinfo.scss";
</style>
