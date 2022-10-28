<template>
    <main class="mt-20">
        <div class="grid container grid-cols-1 md:grid-cols-3 md:py-10">
            <PortfolioItem title="bielanypark" info="test" :category="['test1', 'test2']" />
            <PortfolioItem title="danfit" info="test" :category="['test1', 'test2']" />
            <PortfolioItem title="Jaguar" info="test" :category="['test1', 'test2']" />
        </div>
        <div class="grid container grid-cols-1 md:grid-cols-3 md:py-10">
            <PortfolioItem title="Moss" info="info" :category="['test1', 'test2']" />
            <PortfolioItem title="castle3d" info="info" :category="['test1', 'test2']" />
            <PortfolioItem title="komb" info="info" :category="['test1', 'test2']" />
        </div>
        <div class="grid container grid-cols-1 md:grid-cols-3 md:py-10">
            <PortfolioItem title="zielonewidoki" info="info" :category="['test1', 'test2']" />
            <PortfolioItem title="zielonewidoki" info="info" :category="['test1', 'test2']" />
            <PortfolioItem title="zielonewidoki" info="info" :category="['test1', 'test2']" />
        </div>
        <div>
            <div>
                <div>
                    <Footer />
                </div>
            </div>
        </div>
    </main>
</template>

<script>
import { Footer } from "../containers";
import { PortfolioItem } from "../components";
export default {
    name: "Portfolio",
    components: {
        Footer,
        PortfolioItem
    }
};
</script>
