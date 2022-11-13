<template>
    <main>
        <LandingPage h1="Usługi pod Twoje potrzeby."
            h2="W naszym studio kreujemy prace które, działają, zdobywają serca użytkowników i zapadają w pamięć. Tworzymy wszystko od A do Z, tak jak chcesz." />
        <OurOffer :buttons="false" to="Portfolio" :bottomLinkText="['Zachęcamy do sprawdzenia', 'naszych prac.']" />
        <OurProcess />
        <Collabs />
        <Footer />
    </main>
</template>

<script>
import { LandingPage, OurOffer, OurProcess, Collabs, Footer } from "../containers";
export default {
    name: "Oferta",
    components: {
        LandingPage,
        OurOffer,
        OurProcess,
        Collabs,
        Footer,
    },
};
</script>
