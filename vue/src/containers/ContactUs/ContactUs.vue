<template>
    <section id="contact" class="h-auto py-24 md:py-0 md:h-[80vh] md:grid content-center">
        <div class="container text-center">
            <SectionHeader headerLine="Napisz do nas!" mainHeader="Zatrudnij nas a my zajmiemy się resztą."
                :noAccent="true" />
            <div class="mt-10 md:mt-14 lg:mt-20">
                <ButtonTrail text="Porozmawiajmy!" />
            </div>
        </div>
    </section>
</template>

<script>
import { SectionHeader, ButtonTrail } from "../../components";

export default {
    components: { SectionHeader, ButtonTrail },
};
</script>

<style lang="scss" scoped>
@import "./contactus.scss";
</style>
