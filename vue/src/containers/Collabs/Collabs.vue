<template>
    <section id="clients">
        <div class="container">
            <h4 class="mb-2">Oni juz nam zaufali:</h4>
            <div class="grid grid-cols-5">
                <CollabItem img="src/assets/images/logos/client/danfit.svg" />
                <CollabItem img="src/assets/images/logos/client/komb.svg" />
                <CollabItem
                    img="src/assets/images/logos/client/zielonewidoki.svg"
                />
                <CollabItem img="src/assets/images/logos/client/ats.svg" />
                <CollabItem img="src/assets/images/logos/client/bielany.svg" />
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

<style>
@import "./collabs.scss";
</style>
