<script>
import {
    heroSection,
    ourWorksSection,
    aboutUsSection,
    whyUsSection,
    footerSection,
} from "../containers";
export default {
    name: "Start",
    components: {
        heroSection,
        ourWorksSection,
        aboutUsSection,
        whyUsSection,
        footerSection,
    },
};
</script>

<template>
    <heroSection />
    <ourWorksSection />
    <aboutUsSection />
    <whyUsSection />
    <footerSection />
</template>
