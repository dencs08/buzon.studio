<template>
    <main data-scroll-container>
        <TypedHero />
        <WhyUs :buttons="false" :contactParagraph="true" />
        <OurProcess />
        <Collabs />
        <Footer />
    </main>
</template>

<script>
import { TypedHero, WhyUs, OurProcess, Collabs, Footer } from "../containers";
export default {
    name: "Oferta",
    components: {
        TypedHero,
        WhyUs,
        OurProcess,
        Collabs,
        Footer,
    },
};
</script>
