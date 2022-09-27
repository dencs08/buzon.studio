<script>
import {
    Hero,
    OurWorks,
    AboutUs,
    WhyUs,
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
        WhyUs,
        ContactUs,
        Collabs,
        Footer,
    },
};
</script>

<template>
    <Hero />
    <OurWorks />
    <AboutUs />
    <WhyUs :buttons="true" />
    <ContactUs />
    <Collabs />
    <Footer />
</template>
