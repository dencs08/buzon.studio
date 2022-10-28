<template>
    <main class="mt-32">
        <div ref="wrapper" class="h-[50vh] relative">
            <div ref="grid" class="absolute md:grid grid-cols-3">
                <div class="container space-y-5 md:space-y-10">
                    <PortfolioItem title="bielanypark" info="test" :category="['test1', 'test2']" />
                    <PortfolioItem title="danfit" info="test" :category="['test1', 'test2']" />
                    <PortfolioItem title="Jaguar" info="test" :category="['test1', 'test2']" />
                </div>
                <div class="container space-y-5 md:space-y-10">
                    <PortfolioItem :long="true" title="Moss" info="info" :category="['test1', 'test2']" />
                    <PortfolioItem :long="true" title="castle3d" info="info" :category="['test1', 'test2']" />
                    <PortfolioItem :long="true" title="komb" info="info" :category="['test1', 'test2']" />
                    <PortfolioItem :long="true" title="zielonewidoki" info="info" :category="['test1', 'test2']" />
                </div>
                <div class="container space-y-5 md:space-y-10">
                    <PortfolioItem title="ats" info="info" :category="['test1', 'test2']" />
                    <PortfolioItem title="zielonewidoki" info="info" :category="['test1', 'test2']" />
                    <PortfolioItem title="zielonewidoki" info="info" :category="['test1', 'test2']" />
                </div>
            </div>
        </div>
        <div>
            <div>
                <div class="">
                    <Footer />
                </div>
            </div>
        </div>
    </main>
</template>

<script>
import { Footer } from "../containers";
import { PortfolioItem } from "../components";

import gsap from 'gsap';
import ScrollTrigger from 'gsap/ScrollTrigger'

export default {
    name: "Portfolio",
    components: {
        Footer,
        PortfolioItem
    },

    mounted() {
        setTimeout(() => {
            gsap.registerPlugin(ScrollTrigger)
            let tlScroll;
            tlScroll = gsap.timeline({ defaults: { ease: "none" }, paused: true });
            tlScroll
                .to(this.$refs.grid.children[0], { y: "-50%", duration: 3 })
                .to(this.$refs.grid.children[1], { y: "-84.5%", duration: 3 }, "<")
                .to(this.$refs.grid.children[2], { y: "-50%", duration: 3 }, "<")

            ScrollTrigger.create({
                trigger: this.$refs.wrapper,
                start: "200% 100%",
                end: "1000%",
                scroller: "#smoothScroll",
                animation: tlScroll,
                scrub: true,
                pin: true,
            })
        }, 1000);
    }
};
</script>
