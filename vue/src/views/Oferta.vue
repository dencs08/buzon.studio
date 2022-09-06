<template>
    <TypedHero />
    <WhyUs />
    <OurProcess />
    <Collabs />
    <Footer />
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
