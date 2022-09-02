<script>
import heroSection from "../containers/Hero/Hero.vue";
import footerSection from "../containers/Footer/Footer.vue";
export default {
    name: "Start",
    components: {
        heroSection,
        footerSection,
    },
};
</script>

<template>
    <heroSection />
    <footerSection />
</template>
