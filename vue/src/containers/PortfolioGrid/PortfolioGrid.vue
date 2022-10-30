<template>
    <div ref="wrapper" class="lg:h-[60vh] relative mb-[10vw]">
        <div ref="grid" class="lg:absolute lg:grid grid-cols-3">
            <PortfolioColumn v-for="item in this.items" :items="item" />
        </div>
    </div>
</template>
<script>
import { PortfolioColumn, PortfolioItem } from '../../components'

import gsap from 'gsap';
import ScrollTrigger from 'gsap/ScrollTrigger'

export default {
    components: {
        PortfolioColumn,
        PortfolioItem,
    },

    data() {
        let items

        return { items }
    },

    mounted() {
        this.items = [
            [
                { title: 'bielanypark', info: 'asd', categories: ['bielany1', 'bielany2'] },
                { title: 'castle3d', info: 'asd', categories: ['bielany1', 'bielany2'] },
                { title: 'jaguar', info: 'asd', categories: ['bielany1', 'bielany2'] }
            ],

            [
                { title: 'zielonewidoki', info: 'asd', categories: ['bielany1', 'bielany2'], long: true },
                { title: 'watch3d', info: 'asd', categories: ['bielany1', 'bielany2'], long: true },
                { title: 'danfit', info: 'asd', categories: ['bielany1', 'bielany2'], long: true },
                { title: 'ats', info: 'asd', categories: ['bielany1', 'bielany2'], long: true }
            ],
            [
                { title: 'komb', info: 'asd', categories: ['bielany1', 'bielany2'] },
                { title: 'meble', info: 'asd', categories: ['bielany1', 'bielany2'] },
                { title: 'moss', info: 'asd', categories: ['bielany1', 'bielany2'] }
            ]
        ]

        if (!window.matchMedia("(min-width: 1024px)").matches) return;
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
                start: "180% 100%",
                end: "+=1500",
                scroller: "#smoothScroll",
                animation: tlScroll,
                scrub: true,
                pin: true,
            })
        }, 1000);
    }
}
</script>
<style lang="">
    
</style>