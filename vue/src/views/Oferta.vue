<template>
    <main>
        <TypedHero />
        <OurOffer :buttons="false" to="Kontakt" :bottomLinkText="['Jeśli jesteś zainteresowany', 'napisz do nas.']" />
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
