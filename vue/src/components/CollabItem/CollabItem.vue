<template>
    <div class="m-auto flex justify-center items-center">
        <div class="client-logo m-0 py-0 px-1 sm:px-3 lg:px-4">
            <img
                :src="img"
                alt="branding (logotyp) danfit"
                width="350"
                height="100"
                class="mx-auto"
            />
        </div>
    </div>
</template>

<script>
export default {
    props: {
        img: String,
    },
};
</script>

<style lang="scss" scoped>
@import "./collabitem.scss";
</style>
