<template>
    <div>
        <h2 class="mb-3">
            ExternalLinks
        </h2>

        <div class="container">
            <ul v-for="link in links">
                <li class="mb-2">
                    <LinkPrimary :text="link.text" :href="link.to" :secondary="true" :noReveal="true" target="_blank" />
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
import { LinkPrimary } from '../../components'
export default {
    components: {
        LinkPrimary
    },
    data() {
        return {
            links: [
                { text: 'Round Cube email', to: 'https://roundcube.pl/?_task=mail&_mbox=INBOX' },
                { text: 'Google analitics', to: 'https://analytics.google.com/analytics/web/?authuser=1&pli=1#/p291792936/realtime/overview?params=_u..nav%3Dmaui%3Fauthuser%253D1%3Fauthuser%253D1%3Fauthuser%253D1' },
                { text: 'Facebook', to: 'https://www.facebook.com/buzonstudio' },
                { text: 'Instagram', to: 'https://www.instagram.com/buzonstudio/' },
            ]
        }
    }
}
</script>
<style lang="">
    
</style>