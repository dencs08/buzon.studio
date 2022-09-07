<template>
    <div class="mx-auto flex justify-center items-center">
        <div class="client-logo m-0 py-0">
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

<style scoped>
@import "./collabitem.scss";
</style>
