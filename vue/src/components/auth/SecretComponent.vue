<template>
    <section>
        <div class="container">
            <div class="p-10 bg-zinc-900 rounded-xl sm:min-w-[450px] w-[95vw] sm:w-full">
                <h4 class="mb-8">Zaloguj sie.</h4>
                <form @submit.prevent="handleLogin">
                    <div class="form-field mb-8">
                        <input id="name" name="name" v-model="formData.name" class="input-text js-input" type="text"
                            placeholder=" " required />
                        <label for="name">
                            name
                        </label>
                    </div>

                    <div class="form-field mb-4">
                        <input id="password" name="password" v-model="formData.password" class="input-text js-input"
                            type="password" placeholder=" " required />
                        <label for="name">
                            password
                        </label>
                    </div>

                    <p v-if="error" class="text-red-500 mb-4">{{ error }}</p>

                    <div>
                        <Button text="Login" type="submit" :primary="true" :small="true" :noReveal="true" />
                    </div>
                </form>
            </div>
        </div>
    </section>
</template>
<script>
import { Button, InputText } from '../../components'
import { axiosAuthenticator } from '../../js/axios'

export default {
    components: {
        Button,
        InputText
    },
    data() {
        return {
            error: null,
            formData: {
                name: '',
                password: ''
            }
        }
    },

    mounted() {
    },

    methods: {
        handleLogin() {
            axiosAuthenticator.get('/sanctum/csrf-cookie').then(response => {
                axiosAuthenticator.post('/api/login', this.formData)
                    .then(response => {
                        this.$router.push({ path: '/dashboard' })
                    })
                    .catch(error => {
                        this.error = 'Invalid name or password.';
                    })
            });
        },
    }
}
</script>

<style lang="scss" scoped>

</style>