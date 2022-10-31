<template>
    <main>
        <Hero />
        <OurWorks />
        <AboutUs />
        <OurOffer :buttons="true" to="Oferta" :bottomLinkText="['Jeśli jesteś zainteresowany', 'napisz do nas.']" />
        <ContactUs />
        <Collabs />
        <Footer />
    </main>
</template>

<script>

import {
    Hero,
    OurWorks,
    AboutUs,
    OurOffer,
    ContactUs,
    Collabs,
    Footer,
} from "../containers";
export default {
    name: "Start",
    components: {
        Hero,
        OurWorks,
        AboutUs,
        OurOffer,
        ContactUs,
        Collabs,
        Footer,
    },
};
</script>