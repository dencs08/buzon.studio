<template>
    <section>
        <div class="container">
            <h5 class="font-color-darker">Podobają Ci się nasze prace?</h5>
            <div class="link">
                <LinkPrimary text="Zacznijmy współpracę" to="Kontakt" :primary="true" :point="true" />
            </div>
        </div>
        <AutoTextSlider text="BUZON.STUDIO" :wordAmount="3" fontSize="12vw" height="10vw" class="my-6 md:my-10" />
    </section>
</template>

<script>
import { LinkPrimary, AutoTextSlider } from '../../../components'
export default {
    components: {
        LinkPrimary,
        AutoTextSlider
    }
}
</script>

<style lang="scss" scoped>
h5 {
    font-size: clamp(0.9rem, 1.25vw, 5rem);
}

.link {
    font-size: clamp(0.9rem, 3vw, 5rem);

}
</style>