<template>
    <div class="button-trail">
        <form>
            <router-link to="Kontakt">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                {{ text }}
            </router-link>
        </form>
    </div>
</template>
<script>
export default {
    props: {
        text: String,
    },
};
</script>
<style lang="scss" scoped>
@import "./buttontrail.scss";
</style>
