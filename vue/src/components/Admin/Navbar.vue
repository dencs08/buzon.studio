<template>
    <div>
        <div class="bg-zinc-800 w-screen flex items-center min-h-[50px] xl:h-[60px] px-4">
            <div class="flex items-center justify-between w-screen">
                <div>
                    <router-link :to="{ name: 'Start' }" @click="this.toggleNav(true)"
                        class="navLogoWrapper whitespace-nowrap overflow-hidden min-w-[13px] w-[0.9vw] pointer-events-auto">
                        <img src="../../assets/images/logos/buzonstudio_white_cropped.svg"
                            class="min-w-[50px] w-[3vw] max-w-[100px] navLogo" alt="buzonstudio logo (branding)" />
                    </router-link>
                </div>
                <div class="flex items-center space-x-4">
                    <div>
                        <span>Witaj, </span>
                        {{ user.name }}
                    </div>
                    <div class="cursor-pointer">
                        <Icon icon="material-symbols:logout" width="30" @click="handleLogout" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { axiosAuthenticator } from '../../js/axios'

import { Icon } from '@iconify/vue'
export default {
    components: {
        Icon
    },

    data() {
        return {
            user: {}
        }
    },
    mounted() {
        axiosAuthenticator.get('/api/user/').then((response) => {
            this.user = response.data;
        })
    },

    methods: {
        handleLogout() {
            axiosAuthenticator.post('/api/logout').then(() => {
                this.$router.push('/login')
            })
        }
    }
}
</script>
<style lang="scss" scoped>
.navLogoWrapper {
    transition: width 0.25s;

    &:hover {
        width: 100% !important;
    }
}
</style>