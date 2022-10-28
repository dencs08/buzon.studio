<template>
    <main class="mt-32">
        <PortfolioGrid />
        <Footer />
    </main>
</template>

<script>
import { Footer, PortfolioGrid } from "../containers";

export default {
    name: "Portfolio",
    components: {
        Footer,
        PortfolioGrid,
    },
};
</script>
