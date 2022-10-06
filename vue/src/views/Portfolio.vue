<template>
    <main>
        <div class="grid container grid-cols-1 md:grid-cols-2 md:h-screen place-items-center">
            <PortfolioFullpage title="bielanypark" info="info" :category="['test1', 'test2']" />
            <PortfolioFullpage title="danfit" info="info" :category="['test1', 'test2']" />
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
import { PortfolioFullpage } from "../components";
export default { name: "Portfolio", components: { Footer, PortfolioFullpage } };
</script>
