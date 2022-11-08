<template>
    <section ref="clients" id="clients">
        <div class="container">
            <h4 ref="h4" class="mb-2">Oni juz nam zaufali:</h4>
            <div ref="imgs"
                class="[&>*]:px-3 xl:[&>*]:px-12 xs:space-y-0 flex flex-wrap justify-center items-center md:flex-nowrap text-center">
                <CollabItem name="danfit" class="grow" />
                <CollabItem name="komb" class="grow" />
                <CollabItem name="zielonewidoki" class="grow hidden sm:block" />
                <CollabItem name="ats" class="grow hidden md:block" />
                <CollabItem name="bielanypark" class="grow hidden md:block" />
                <CollabItem name="aviorprojekt" class="grow hidden lg:block" />
            </div>
        </div>
    </section>
</template>

<script>
import { CollabItem } from "../../components";
import { textReveal } from '../../js/textReveal'

export default {
    components: {
        CollabItem,
    },

    mounted() {
        textReveal(this.$refs.h4, this.$refs.clients, true, false, false, false);
    }
};
</script>

<style lang="scss" scoped>
@import "./collabs.scss";
</style>
