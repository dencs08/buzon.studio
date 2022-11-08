<template>
    <footer id="footer" class="mb-2 relative">
        <section ref="trigger">
            <div class="container">
                <hr class="section-divider w-full mt-6 mb-14" />
            </div>
            <div class="md:grid grid-cols-12 container text-center md:text-left">
                <div class="col-span-7 mb-8 md:mb-0">
                    <LinkPrimary text="Powiedz nam o swoim pomyśle"
                        class="font-family-header contact-line cursor-pointer uppercase mb-4 md:mb-12 xl:w-4/6"
                        :point="true" to="Kontakt" />

                    <div>
                        <router-link :to="{ name: 'Kontakt' }">
                            <Button text="Kontakt" :point="true" :big="true" :split="true" />
                        </router-link>
                    </div>
                </div>

                <div class="col-span-5">
                    <div class="md:grid grid-cols-2">
                        <div class="mb-8 md:mb-0">
                            <h4 ref="contactHeader" class="md:mb-5">Kontakt</h4>
                            <LinkPrimary :href="`mailto:${email}?subject = Oferta&body = Wiadomość`" :text="email"
                                :primary="true" class="mail-link fw-medium font-color-dark" />

                            <h4 ref="phone" class="phone-number font-color-dark font-medium mb-2 mt-2">
                                {{ phone }}
                            </h4>
                        </div>

                        <div class="font-color-dark md:pl-12">
                            <h4 ref="menuHeader" class="md:mb-5">Menu</h4>
                            <ul class="space-y-2 uppercase">
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
                    <SocialIcons ref="social" class="space-x-3 mt-8" />
                </div>
            </div>

            <AutoTextSlider text="BUZON.STUDIO" :wordAmount="3" fontSize="12vw" height="10vw" class="my-6 md:my-10" />

            <div ref="footerBottom"
                class="container font-family-header uppercase text-center md:text-left space-y-2 md:space-y-0">
                <div ref="privacy" class="block md:inline-block mr-0 md:mr-4">
                    <LinkPrimary to="Prywatnosc" text="Polityka prywatności" :secondary="true"
                        class="font-color-dark" />
                </div>
                <ToggleThree ref="toggle3d" class="md:inline-block" />
                <div ref="copyright" class="block md:inline-block float-none md:float-right">
                    <span class="font-color-darker">© 2021 {{ name }} wszelkie prawa
                        zastrzeżone.</span>
                </div>
            </div>

        </section>
        <div class="scroll-blocker"></div>
    </footer>
</template>

<script>
let name = import.meta.env.VITE_NAME;
let email = import.meta.env.VITE_EMAIL;
let phone = import.meta.env.VITE_PHONE;

import { textReveal } from '../../js/textReveal'

import { LinkPrimary, SocialIcons, ToggleThree, Button, AutoTextSlider } from "../../components";

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
        Button,
        AutoTextSlider
    },

    mounted() {
        let arr = [this.$refs.contactHeader, this.$refs.menuHeader, this.$refs.phone]
        arr.forEach(el => {
            textReveal(el, this.$refs.trigger, true, false, false, false);
        });

        let bottomFooterArr = [this.$refs.copyright]
        bottomFooterArr.forEach(el => {
            textReveal(el, this.$refs.footerBottom, true, false, false, false, -800);
        });
    }
};
</script>

<style lang="scss" scoped>
@import "./Footer.scss";
</style>
