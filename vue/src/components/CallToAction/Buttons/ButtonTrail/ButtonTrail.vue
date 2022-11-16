<template>
    <div ref="btnWrapper" class="button-trail">
        <form ref="btn" class="reveal">
            <router-link to="Kontakt"
                class="relative inline-block w-[75%] py-5 md:py-6 md:w-auto md:px-20 uppercase overflow-hidden duration-500 text-highlight">
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
import { elementReveal } from '../../../../js/textReveal'

export default {
    props: {
        text: String,
    },

    mounted() {
        elementReveal(this.$refs.btn, this.$refs.btnWrapper);
    }
};
</script>
<style lang="scss" scoped>
@import "./buttontrail.scss";

.reveal {
    visibility: hidden;
}
</style>
