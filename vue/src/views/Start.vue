<template>
    <main data-scroll-container>
        <Hero />
        <OurWorks />
        <AboutUs />
        <WhyUs :buttons="true" />
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