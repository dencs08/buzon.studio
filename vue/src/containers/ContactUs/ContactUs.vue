<template>
    <section data-scroll-section id="contact">
        <div class="container text-center section-mb">
            <SectionHeader headerLine="Napisz do nas!" mainHeader="Zatrudnij nas a my zajmiemy się resztą."
                :noAccent="true" />
            <div class="mt-20">
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
