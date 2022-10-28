<template>
    <main>
        <div class="grid container grid-cols-1 md:grid-cols-2 md:h-screen place-items-center">
            <PortfolioItem title="bielanypark" info="info" :category="['test1', 'test2']" />
            <PortfolioItem title="danfit" info="info" :category="['test1', 'test2']" />
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
