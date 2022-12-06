<template>
    <div>
        <div>
            <NavbarAdmin />
        </div>
        <div class="flex">
            <div>
                <Sidebar class="h-screen" />
            </div>
            <div class="bg-lighter w-full container pt-4">
                <router-view v-slot="{ Component }">
                    <transition name="quickFade" mode="out-in">
                        <component :is="Component" />
                    </transition>
                </router-view>
            </div>
        </div>
    </div>
</template>
<script>
import { Sidebar, NavbarAdmin } from '../components'
export default {
    components: {
        Sidebar,
        NavbarAdmin
    }
}
</script>
<style lang="scss">
@import '../styles/admin.scss';

.quickFade-enter-from,
.quickFade-leave-to {
    opacity: 0;
}

.quickFade-enter-active,
.quickFade-leave-active {
    transition: opacity 0.125s ease-out;
}
</style>