<template>
    <section id="clients">
        <div class="container">
            <h4 class="mb-2">Oni juz nam zaufali:</h4>
            <div
                class="xs:[&>*]:px-3 xl:[&>*]:px-12 space-y-4 xs:space-y-0 flex xs:flex-row flex-col flex-wrap justify-center items-center md:flex-nowrap text-center">
                <CollabItem name="danfit" class="grow" />
                <CollabItem name="komb" class="grow" />
                <CollabItem name="zielonewidoki" class="grow" />
                <CollabItem name="aviorprojekt" class="grow" />
                <CollabItem name="ats" class="grow" />
                <CollabItem name="bielanypark" class="grow" />
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
