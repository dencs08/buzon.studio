<template>
    <section id="contact">
        <div class="container text-center section-mb">
            <SectionHeader
                headerLine="Napisz do nas!"
                mainHeader="Zatrudnij nas a my zajmiemy się resztą."
                :noAccent="true"
            />
            <div>
                <div class="button-trail mt-20">
                    <form>
                        <a href="/kontakt">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            Porozmawiajmy!
                        </a>
                    </form>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import { SectionHeader } from "../../components";

export default {
    components: { SectionHeader },
};
</script>

<style lang="scss" scoped>
@import "./contactus.scss";
</style>
