<template>
    <div class="form-field validate-input" data-validate="To pole jest wymagane!">
        <input :id="inputId" :name="inputId" class="input-text js-input" :type="type" placeholder=" " required />
        <label for="name">
            <slot></slot>
        </label>
    </div>
</template>
<script>
export default {
    props: {
        inputId: String,
        type: String,
    }
}
</script>
<style lang="scss" scoped>
@import "../../styles/_variables.scss";

.form-field {
    position: relative;
    margin: 32px 0;

    .input-text {
        display: block;
        width: 100%;

        border: 1px solid #6b6b6b80 !important;
        border-radius: 100px;

        padding-top: clamp(1em, 1.5vw, 3em);
        padding-bottom: clamp(1em, 1.5vw, 3em);
        padding-left: clamp(1em, 1.5vw, 3em);
        padding-right: clamp(1em, 1.5vw, 3em);

        background-color: #ffffff0d !important;

        color: $font-color-primary !important;

        transition: 0.5s border;

        &:focus {
            outline: none;
            border: solid 1px $primary-color !important;
        }
    }


    label {
        position: absolute;
        left: clamp(2.25rem, 1.65vw, 4rem);
        top: clamp(1rem, 1.6vw, 2.75rem);

        font-size: clamp(0.9rem, 1vw, 1.35rem);
        font-weight: 300;
        color: rgb(126, 126, 126);

        transition: all 0.25s ease-in-out;
    }

    input:focus~label,
    input:valid~label {
        top: -24px;
        left: 10px;
        color: $primary-color;
        font-size: $font-size-base * 0.9;
        font-weight: 500;

        input {
            border: $primary-color 1px solid !important;
        }
    }

    input:not(:placeholder-shown):not(:focus):invalid {
        border: 1px solid red !important;
        color: red;
    }

    input:not(:placeholder-shown):not(:focus):invalid~label {
        color: red;
        font-size: 14px;
        left: 10px;
        top: -24px;
    }
}
</style>