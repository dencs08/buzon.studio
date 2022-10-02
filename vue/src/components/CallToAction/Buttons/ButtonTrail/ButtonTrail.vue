<template>
    <div class="button-trail">
        <form>
            <a href="/kontakt">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                {{ text }}
            </a>
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
