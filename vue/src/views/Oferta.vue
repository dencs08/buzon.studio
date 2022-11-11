<template>
    <main>
        <TypedHero />
        <OurOffer :buttons="false" to="Portfolio" :bottomLinkText="['Zachęcamy do sprawdzenia', 'naszych prac.']" />
        <OurProcess />
        <Collabs />
        <Footer />
    </main>
</template>

<script>
import { TypedHero, OurOffer, OurProcess, Collabs, Footer } from "../containers";
export default {
    name: "Oferta",
    components: {
        TypedHero,
        OurOffer,
        OurProcess,
        Collabs,
        Footer,
    },
};
</script>
