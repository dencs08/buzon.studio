<template>
    <div ref="threeCanvas" id="threeCanvas" class="pointer-events-none z-[-99] fixed">
    </div>
</template>
<script>
import gsap from 'gsap'
export default {
    props: {
        showAnimationDelay: Number,
    },
    mounted() {
        gsap.to(this.$refs.threeCanvas, { autoAlpha: 1, opacity: 1, duration: 1, delay: this.showAnimationDelay, ease: 'expo' })
    }
}
</script>
<style lang="scss" scoped>
div {
    width: 100vw;
    height: 100vh;

    visibility: hidden;
    opacity: 0;
}

canvas {
    width: 100%;
    height: 100%;
    pointer-events: none;
}
</style>