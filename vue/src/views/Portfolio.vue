<template>
    <main class="mt-32">
        <Suspense>
            <template #default>
                <PortfolioGrid />
            </template>
            <template #fallback>
                <transition name="fade" mode="out-in">
                    <div class="container">
                        <div class="md:grid grid-cols-3 space-x-10">
                            <div class="h-screen space-y-10">
                                <div class="bg-slate-900 min-h-[70vh] max-h-[80vh] w-full aspect-[7/10]"></div>
                                <div class="bg-slate-900 min-h-[70vh] max-h-[80vh] w-full aspect-[7/10]"></div>
                            </div>
                            <div class="h-screen space-y-10">
                                <div class="bg-slate-900 min-h-[70vh] max-h-[80vh] w-full aspect-[7/10]"></div>
                                <div class="bg-slate-900 min-h-[70vh] max-h-[80vh] w-full aspect-[7/10]"></div>
                            </div>
                            <div class="h-screen space-y-10">
                                <div class="bg-slate-900 min-h-[70vh] max-h-[80vh] w-full aspect-[7/10]"></div>
                                <div class="bg-slate-900 min-h-[70vh] max-h-[80vh] w-full aspect-[7/10]"></div>
                            </div>
                        </div>
                    </div>
                </transition>
            </template>
        </Suspense>

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

<style lang="scss" scoped>
.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.65s ease-in-out;
}
</style>
