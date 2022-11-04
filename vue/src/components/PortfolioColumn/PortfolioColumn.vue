<template>
    <div class="container space-y-5 md:space-y-10">
        <PortfolioItem v-for="project in this.projects" :title="project.name" :info="project.descShort"
            :category="project.categories" :long="project.long" />
    </div>
</template>
<script>
import { PortfolioItem } from "../";

export default {
    components: {
        PortfolioItem,
    },

    props: {
        projects: Object,
        long: Boolean,
    },
}
</script>

<style lang="scss">
@import './portfoliocolumn.scss';
</style>