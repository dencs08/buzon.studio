<template>
    <footer data-scroll-section id="footer" class="mb-2 relative">
        <section>
            <hr class="section-divider mt-6 mb-10" />
            <section>
                <div class="container text-center md:text-left">
                    <div class="clip">
                        <LinkPrimary text="Zostańmy w kontakcie"
                            class="font-family-header contact cursor-pointer inline-block" :point="true" :split="true"
                            to="Kontakt" />
                    </div>

                    <div>
                        <div>
                            <LinkPrimary :href="`mailto:${email}?subject = Oferta&body = Wiadomość`" :text="email"
                                :primary="true" class="mail-link fw-medium font-color-secondary" />

                            <h4 class="phone-number font-color-dark font-medium mb-2 mt-2">
                                {{ phone }}
                            </h4>

                            <SocialIcons class="space-x-3 mt-5" />

                            <div class="footer-links uppercase mt-12 fw-light">
                                <ul class="space-y-2">
                                    <li>
                                        <LinkPrimary to="Start" text="start" :secondary="true" />
                                    </li>
                                    <li>
                                        <LinkPrimary to="Oferta" text="oferta" :secondary="true" />
                                    </li>
                                    <li>
                                        <LinkPrimary to="Portfolio" text="portfolio" :secondary="true" />
                                    </li>
                                    <li>
                                        <LinkPrimary to="Kontakt" text="kontakt" :secondary="true" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="font-family-header uppercase text-center md:text-left mt-14 space-y-2 md:space-y-0">
                        <div class="block md:inline-block mr-0 md:mr-4">
                            <LinkPrimary to="Prywatnosc" text="Polityka prywatności" :secondary="true"
                                class="font-color-dark" />
                        </div>
                        <ToggleThree class="md:inline-block" />
                        <div class="block md:inline-block float-none md:float-right">
                            <span class="font-color-darker">© 2021 {{ name }} wszelkie prawa
                                zastrzeżone.</span>
                        </div>
                    </div>
                </div>
            </section>
            <div class="scroll-blocker"></div>
        </section>
    </footer>
</template>

<script>
let name = import.meta.env.VITE_NAME;
let email = import.meta.env.VITE_EMAIL;
let phone = import.meta.env.VITE_PHONE;

import { LinkPrimary, SocialIcons, ToggleThree } from "../../components";

export default {
    data() {
        return {
            name: name,
            email: email,
            phone: phone,
        };
    },

    components: {
        LinkPrimary,
        SocialIcons,
        ToggleThree,
    },
};
</script>

<style lang="scss">
@import "./Footer.scss";
</style>
