<template>
    <div class="bg-zinc-800 min-w-[150px] w-[2vw]">
        <div class="p-4">
            <ul v-for="link in links">
                <li class="flex items-center mb-4">
                    <Icon :icon="link.icon" width="22" color="#ffffff" class="mr-2" />
                    <LinkPrimary :text="link.text" :to="link.to" :secondary="true" :noReveal="true" />
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
import { Icon } from '@iconify/vue'
import { LinkPrimary } from '../../components'
export default {
    data() {
        return {
            links: [
                { text: 'Overview', to: 'Overview', icon: 'line-md:home-simple' },
                { text: 'Emailing', to: 'Emailing', icon: 'line-md:email' },
                { text: 'Analitics', to: 'Analitics', icon: 'line-md:clipboard-check-to-clipboard-transition' },
                { text: 'External', to: 'ExternalLinks', icon: 'line-md:external-link' }
            ]
        }
    },
    components: {
        LinkPrimary,
        Icon
    }
}
</script>

<style lang="scss">

</style>
