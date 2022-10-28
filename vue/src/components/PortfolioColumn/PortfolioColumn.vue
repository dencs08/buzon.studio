<template>
    <div class="container space-y-5 md:space-y-10">
        <PortfolioItem v-for="item in items" :title="item.title" :info="item.info" :category="item.categories"
            :long="item.long" />
    </div>
</template>
<script>
import { PortfolioItem } from "../";

export default {
    components: {
        PortfolioItem,
    },

    props: {
        items: Array,
        long: Boolean,
    }
}
</script>
<style lang="scss">
@import './portfoliocolumn.scss';
</style>