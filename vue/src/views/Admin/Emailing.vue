<template>
    <div>
        <h2>
            Emailing
        </h2>

        <section class="mt-4">
            <p>Pick email component</p>
            <div class="mt-3 space-x-4">
                <router-link :to="{ name: 'EmailPricing' }">
                    <LinkPrimary text="Pricing email" :primary="true" :noReveal="true" />
                </router-link>
                <router-link :to="{ name: 'EmailResponse' }">
                    <LinkPrimary text="Response email" :primary="true" :noReveal="true" />
                </router-link>
            </div>
        </section>

        <section class="mt-4">
            <router-view v-slot="{ Component }">
                <transition name="quickFade" mode="out-in">
                    <component :is="Component" />
                </transition>
            </router-view>
        </section>
    </div>
</template>

<script>
import { LinkPrimary } from '../../components'
export default {
    components: {
        LinkPrimary
    }
}
</script>

<style lang="scss">

</style>