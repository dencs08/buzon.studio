<template>
    <Transition name="slide" mode="out-in">
        <button
            v-if="isToggled == true"
            class="cursor-pointer font-color-dark bottom-0"
            :data-toggle="isToggled ? 'ON' : 'OFF'"
            @click="toggle"
        >
            <span>Włącz 3D</span>
        </button>
        <button
            v-else-if="isToggled == false"
            class="cursor-pointer font-color-dark"
            :data-toggle="isToggled ? 'ON' : 'OFF'"
            @click="toggle"
        >
            <span>Wyłącz 3D</span>
        </button>
    </Transition>
</template>

<script>
export default {
    data() {
        return {
            isToggled: true,
        };
    },

    methods: {
        toggle() {
            this.isToggled = !this.isToggled;
        },
    },
};
</script>

<style lang="scss" scoped>
@import "./togglethree.scss";

.slide-enter-active,
.slide-leave-active {
    transition: all 0.25s ease-out;
}

.slide-enter-from {
    opacity: 0;
    transform: translateY(30px);
}

.slide-leave-to {
    opacity: 0;
    transform: translateY(-30px);
}
</style>
