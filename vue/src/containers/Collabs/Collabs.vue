<template>
    <section id="clients">
        <div class="container">
            <h4 class="mb-2">Oni juz nam zaufali:</h4>
            <div
                class="[&>*]:pt-4 grid grid-cols-2 md:grid-cols-6 lg:grid-cols-5"
            >
                <CollabItem
                    img="src/assets/images/logos/client/danfit.svg"
                    class="md:col-span-2 lg:col-span-1"
                />
                <CollabItem
                    img="src/assets/images/logos/client/komb.svg"
                    class="md:col-span-2 lg:col-span-1"
                />
                <CollabItem
                    img="src/assets/images/logos/client/zielonewidoki.svg"
                    class="md:col-span-2 lg:col-span-1"
                />
                <CollabItem
                    img="src/assets/images/logos/client/ats.svg"
                    class="md:col-span-3 lg:col-span-1"
                />
                <CollabItem
                    img="src/assets/images/logos/client/bielany.svg"
                    class="col-span-2 md:col-span-3 lg:col-span-1"
                />
            </div>
        </div>
    </section>
</template>

<script>
import { CollabItem } from "../../components";
export default {
    components: {
        CollabItem,
    },
};
</script>

<style lang="scss" scoped>
@import "./collabs.scss";
</style>
