<template>
    <section id="Contact">
        <div class="container text-center mb-12 md:mb-32">
            <div class="mb-10">
                <SectionHeader mainHeader="Co możemy dla Ciebie zrobić?" :big="true" :noAccent="true" />
            </div>

            <form id="contact-form" name="contact-form" class="contact-form validate-form" :onSubmit="sendEmail"
                method="post">
                <div>
                    <div ref="booleansWrapper">
                        <div class="control-group-error hidden opacity-0">
                            <h3 class="font-color-dark text-center">
                                Wybierz conajmniej jedną z poniższych opcji:
                            </h3>
                        </div>
                        <div ref="booleans" class="control-group flex flex-wrap items-center justify-center sm:gap-2">
                            <input class="form_subject" type="checkbox" id="talk" name="controlInfo[]"
                                value="Chcę porozmawiać" />
                            <label cursor-shrink for="talk">
                                <span class="label-name">Chcę porozmawiać</span>
                            </label>

                            <input class="form_subject" type="checkbox" id="website" name="controlInfo[]"
                                value="Strona Internetowa" />
                            <label cursor-shrink for="website">
                                <span class="label-name">Strona Internetowa</span>
                            </label>

                            <input class="form_subject" type="checkbox" id="Aplikacja" name="controlInfo[]"
                                value="Aplikacja" />
                            <label cursor-shrink for="Aplikacja">
                                <span class="label-name">Aplikacja</span>
                            </label>

                            <input class="form_subject" type="checkbox" id="branding" name="controlInfo[]"
                                value="Branding" />
                            <label cursor-shrink for="branding">
                                <span class="label-name">Branding</span>
                            </label>

                            <input class="form_subject" type="checkbox" id="other" name="controlInfo[]"
                                value="Coś Innego" />
                            <label cursor-shrink for="other">
                                <span class="label-name">Coś Innego</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr ref="hr" class="section-divider my-10 md:my-16 lg:my-20 w-full" />

                <div ref="inputsWrapper" class="inputsWrapper">
                    <div class="md:grid md:grid-cols-2">
                        <div class="md:pr-5">
                            <div class="form-field validate-input" data-validate="To pole jest wymagane!">
                                <input id="name" name="name" class="input-text js-input" type="text" placeholder=" "
                                    required pattern="[a-zA-Z ]{2,}" />
                                <label for="name">Imię</label>
                            </div>
                        </div>
                        <div class="md:pl-5">
                            <div class="form-field validate-input" data-validate="To pole jest wymagane!">
                                <input id="email" name="email" class="input-text js-input" type="email" placeholder=" "
                                    required />
                                <label for="email">E-mail</label>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="form-field validate-input" data-validate="To pole jest wymagane!">
                            <textarea id="message" name="message" class="input-text js-input" cols="30" rows="10"
                                placeholder=" " minlength="10" required></textarea>
                            <label for="message">Wiadomość</label>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="form-field mt-2 mt-md-4 mt-lg-5 mb-3 mb-md-5">
                        <Button type="submit" text="Wyślij" :submit="true" class="sm:w-2/6" />
                    </div>
                </div>
            </form>
        </div>
    </section>
</template>

<script>
import { axiosClient } from '../../js/axios'
import { Button, SectionHeader } from "../../components";
import { elementReveal } from '../../js/textReveal'
import { toast } from '../../js/toastNotification'

export default {
    components: { Button, SectionHeader },

    mounted() {
        elementReveal(this.$refs.hr, this.$refs.hr);
        elementReveal(this.$refs.booleans, this.$refs.booleansWrapper);
        elementReveal(this.$refs.inputsWrapper, this.$refs.inputsWrapper);
    },

    data() {
        return { emailData: {} }
    },

    methods: {
        sendEmail(e) {
            e.preventDefault();

            this.getFormData();

            axiosClient({
                method: 'post',
                url: '/emailSend',
                params: this.axiosParams(),
            }).then(response => (
                toast('Wiadomośc wysłana!', 'Sprawdź swoją skrzynkę po email z potwierdzeniem, do usłyszenia wkrótce! :-)')
            )).catch(error => {
                toast('Ups! Coś poszło nie tak..', 'Spróbuj ponownie poźniej, lub skontaktuj się bezpośrednio na hej@buzon.studio')
            })
        },

        axiosParams() {
            const params = new URLSearchParams();
            params.append('name', this.emailData['name']);
            params.append('email', this.emailData['email']);
            params.append('content', this.emailData['message']);
            params.append('controlInfo', this.emailData['controlInfo']);
            return params;
        },

        getFormData() {
            let controlInfo = [];
            this.$refs.booleans.childNodes.forEach(el => {
                if (el.tagName.toLowerCase() === "label") return;
                if (el.checked == false) return;

                controlInfo.push(el.value);
            });

            this.emailData = {
                name: document.getElementById('name').value,
                email: document.getElementById('email').value,
                message: document.getElementById('message').value,
                controlInfo: controlInfo
            };
        }
    }
};
</script>

<style lang="scss" scoped>
@import "./emailform.scss";

hr,
.control-group,
.inputsWrapper {
    visibility: hidden;
}
</style>
