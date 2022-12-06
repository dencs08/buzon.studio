<template>
    <div class="pb-20">
        <p class="mb-8">Pricing template:</p>
        <form @submit.prevent="sendEmail" class="space-y-8">
            <div class="form-field">
                <input id="to" v-model="formData.to" class="input-text" type="email" placeholder=" " required />
                <label for="to">To:</label>
            </div>

            <div class="form-field">
                <input id="subject" v-model="formData.subject" class="input-text" type="text" placeholder=" "
                    required />
                <label for="subject">Subject:</label>
            </div>

            <div class="grid place-content-center">
                <table align="center" role="presentation" class="main" width="100%" style="
                    border-spacing: 0;
                    margin: 0;
                    padding: 0;
                    width: 100%;
                    max-width: 600px;">
                    <!-- NAV -->
                    <tr>
                        <td class="text-center font-family-primary nav">
                            <table role="presentation" width="100%" class="flex justify-between">
                                <td>
                                    <a href="https://buzon.studio/start">
                                        <img src="https://www.dropbox.com/s/uzm74at6ook4r4r/buzonstudio_white_cropped.png?raw=1"
                                            alt="logo bisonstudio" width="100px" style="max-width: 100%"
                                            class="nav_img" />
                                    </a>
                                </td>

                                <td>
                                    <ul>
                                        <li>
                                            <a href="https://buzon.studio/start" target="_blank"
                                                rel="noopener">Start</a>
                                        </li>
                                        <li>
                                            <a href="https://buzon.studio/oferta" target="_blank"
                                                rel="noopener">Oferta</a>
                                        </li>
                                        <li>
                                            <a href="https://buzon.studio/portfolio" target="_blank"
                                                rel="noopener">Portfolio</a>
                                        </li>
                                    </ul>
                                </td>
                            </table>
                        </td>
                    </tr>

                    <!-- HERO -->
                    <tr align="center">
                        <td class="hero">
                            <table align="center" role="presentation" width="100%">
                                <tr>
                                    <td style="padding: 0 30px 0 30px">
                                        <h1 class="font-family-primary leading-[30px] pt-10">
                                            <textarea id="formH1" v-model="formData.h1"
                                                class="email-template-field text-center" placeholder="Lorem ipsum"
                                                required>
                                            </textarea>
                                        </h1>
                                        <h2 class="font-family-secondary leading-[25px]">
                                            <textarea id="formH2" v-model="formData.h2"
                                                class="email-template-field text-center" placeholder="Lorem ipsum"
                                                required></textarea>
                                        </h2>
                                        <p class="leading-[18px]">
                                            <textarea id="formMain" v-model="formData.main"
                                                class="email-template-field text-center" placeholder="Lorem ipsum"
                                                required></textarea>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- Price -->
                    <tr>
                        <td>
                            <table role="presentation" width="100%">
                                <tr>
                                    <td style="padding: 0 30px 0 30px">

                                        <div class="flex">
                                            <input v-model="item.name" class="email-template-field" placeholder="Name"
                                                type="text">
                                            <input v-model="item.price" class="email-template-field" placeholder="Price"
                                                type="text">
                                            <input v-model="item.amount" class="email-template-field"
                                                placeholder="Amount" type="text">
                                            <Button text="Add" :primary="true" :small="true" @click.prevent="addItem"
                                                :noReveal="true" class="mb-3" />
                                        </div>

                                        <table style="border-collapse: collapse" class="pricing-table" width="100%">
                                            <tr style="background-color: #48a576">
                                                <th>Nazwa</th>
                                                <th>Cena</th>
                                                <th>Ilość</th>
                                                <th>Łącznie</th>
                                            </tr>

                                            <tr v-for="(item, index) in items" :key="index"
                                                class="pricing-table-product relative">
                                                <td>
                                                    {{ item.name }}
                                                </td>
                                                <td>
                                                    {{ item.price }} zł
                                                </td>
                                                <td>
                                                    {{ item.amount }}
                                                </td>
                                                <td>
                                                    {{ item.total }} zł
                                                </td>

                                                <span>
                                                    <Icon @click="removeItem(index)" icon="bi:dash-circle-fill"
                                                        width="20px"
                                                        class="absolute left-[-30px] top-[5px] cursor-pointer" />
                                                </span>

                                            </tr>

                                            <tr>
                                                <td></td>
                                                <td class="fw-bold" style="color: #60de9f">Łącznie</td>
                                                <td></td>
                                                <td class="fw-bold" style="color: #60de9f">{{ formData.totalPrice }} zł
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- Attachments -->
                    <tr align="center">
                        <td class="text-center">
                            <table align="center" role="presentation" width="100%"
                                style="margin-top:20px; margin-bottom:20px;">
                                <tr>
                                    <td class="font-family-primary">
                                        <h3 style="font-weight: 300; font-size: 16px">
                                            <textarea id="formH1" v-model="formData.bottomh3"
                                                class="email-template-field text-center" placeholder="Lorem ipsum"
                                                required>
                                            </textarea>
                                        </h3>
                                        <p style="font-size: 14px;">
                                            <textarea id="formH1" v-model="formData.bottomText"
                                                class="email-template-field text-center" placeholder="Lorem ipsum"
                                                required>
                                            </textarea>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- FOOTER -->
                    <tr>
                        <td style="background-color: #1b1b1b; padding: 45px 25px 45px 25px">
                            <table role="presentation" width="100%" class="footer">
                                <tr>
                                    <td>
                                        <h3>Zostańmy w kontakcie!</h3>

                                        <ul class="social">
                                            <li>
                                                <a href="https://www.facebook.com/buzonstudio" target="_blank"
                                                    rel="noopener"><img width="40px" height="40px"
                                                        src="https://www.dropbox.com/s/rrpkpui3ei3dgda/facebook1.png?raw=1"
                                                        alt="logo facebook" /></a>
                                            </li>
                                            <li>
                                                <a href="https://buzon.studio/kontakt" target="_blank"
                                                    rel="noopener"><img width="40px" height="40px"
                                                        src="https://www.dropbox.com/s/j8vlaov8jnua6lq/facebook.png?raw=1"
                                                        alt="logo email" /></a>
                                            </li>
                                            <li>
                                                <a href="https://www.instagram.com/buzonstudio/" target="_blank"
                                                    rel="noopener"><img width="40px" height="40px"
                                                        src="https://www.dropbox.com/s/olgbjns7lkb6s60/ig.png?raw=1"
                                                        alt="logo instagram" /></a>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- BORDER -->
                    <tr align="center">
                        <td height="50px" style="background-color: #000000"
                            class="text-center font-family-primary font-size-tertiary">
                            <span>© 2022
                                <a href="https://buzon.studio/start">buzon.studio</a> Wszelkie
                                prawa zastrzeżone.
                            </span>
                        </td>
                    </tr>
                </table>
                <!-- End Main Class -->
            </div>

            <div class="grid place-content-center pt-10">
                <div v-if="showResponse" class="text-center mb-5">
                    <p v-if="status === 'pending'" class="text-cyan-500">Loading...</p>
                    <p v-if="status === 'success'" class="text-green-500">The API call was successful!</p>
                    <p v-if="status === 'error'" class="text-red-500">There was an error with the API call.</p>
                </div>
                <Button text="Send" type="submit" :primary="true" :noReveal="true" class="w-[500px]" />
            </div>
        </form>


    </div>
</template>
<script>
import { Icon } from '@iconify/vue';
import { Button } from '../../../components';
import { axiosClient, axiosAuthenticator } from '../../../js/axios'
export default {
    components: { Button, Icon },

    data() {
        return {
            formData: { to: null, subject: null, h1: null, h2: null, main: null, bottomh3: null, bottomText: null, table: [], totalPrice: null },
            items: [],
            item: { name: null, price: null, amount: null, total: null },
            status: 'pending',
            showResponse: false,
        }
    },

    methods: {
        sendEmail: function () {
            axiosAuthenticator.get('/sanctum/csrf-cookie').then(response => {
                this.showResponse = true;
                axiosAuthenticator.post('/api/emailPricing', this.formData)
                    .then(response => {
                        this.status = 'success';
                        console.log(response);
                    })
                    .catch(error => {
                        this.status = 'error';
                        console.log(response);
                    })
            });
        },

        addItem() {
            this.item.total = this.item.price * this.item.amount;
            this.formData.totalPrice += this.item.total;
            this.items.push(this.item);
            this.formData.table.push(this.item);
            this.item = {};
        },
        removeItem(index) {
            this.formData.totalPrice -= this.formData.table[index].total;
            this.items.splice(index, 1);
            this.formData.table.splice(index, 1);
        }

    }
}
</script>
<style lang="scss" scoped>
@import './emailpricing.scss';

.email-template-field {
    width: 100%;

    // min-height: 25px;
    height: fit-content;

    background-color: rgba(255, 255, 255, 0);
}
</style>