<template>
    <main>
        <Hero />
        <OurWorks />
        <AboutUs />
        <OurOffer :buttons="false" to="Oferta" :bottomLinkText="['Nasz proces', 'znajdziesz tutaj.']" />
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