<template>
    <footer id="footer" class="mb-2 relative">
        <section class="container">
            <hr class="section-divider mt-6 mb-10 w-full" />
            <div class="grid grid-cols-4">
                <div class="col-span-3">
                    <div class="mb-12">
                        <h4 class="mb-4">Masz pomysł na projekt?</h4>
                        <LinkPrimary text="Opowiedz nam o nim" class="contact-line cursor-pointer inline-block w-7/12"
                            :point="true" to="Kontakt" />
                    </div>

                    <div class="footer-socials space-y-2">
                        <div>
                            <Icon icon="ri:mail-open-fill" />
                            <LinkPrimary :href="`mailto:${email}?subject=Oferta&body=Wiadomość`" :text="email"
                                class="font-color-dark" />
                        </div>

                        <hr class="section-divider w-2/6 my-4 mr-auto" />

                        <h4 class="font-color-dark">
                            <Icon icon="ri:phone-fill" />
                            <span> {{ phone }}</span>
                        </h4>

                        <hr class="section-divider w-2/6 my-4 mr-auto" />

                        <div>
                            <Icon icon="ri:facebook-fill" />
                            <LinkPrimary :href="fb" rel="noreferrer" target="_blank" text="Facebook"
                                class="font-color-dark" />
                        </div>

                        <hr class="section-divider w-2/6 my-4 mr-auto" />

                        <div>
                            <Icon icon="ri:instagram-line" />
                            <LinkPrimary :href="ig" rel="noreferrer" target="_blank" text="Instagram"
                                class="font-color-dark" />
                        </div>
                        <hr class="section-divider w-2/6 my-4 mr-auto" />

                    </div>

                    <div class="mt-20">
                        <div
                            class="goUp w-[100px] h-[100px] grid content-center rounded-full border-2 border-zinc-700 font-color-darker">
                            <div class="mx-auto">GoUp</div>
                        </div>
                    </div>
                </div>

                <div class="flex flex-col items-end justify-end">
                    <div class="footer-links uppercase mt-12 fw-light text-right">
                        <ul class="space-y-2 font-color-dark">
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

                    <hr class="section-divider w-64 my-4 ml-auto" />

                    <div class="font-family-header uppercase text-right font-color-darker">
                        <div class="">
                            <LinkPrimary to="Prywatnosc" text="Polityka prywatności" :secondary="true" />
                        </div>

                        <hr class="section-divider w-64 my-4 ml-auto" />

                        <ToggleThree class="font-color-darker" />

                        <hr class="section-divider w-64 my-4 ml-auto" />

                        <div class="">
                            <span>© 2021 {{ name }} wszelkie prawa
                                zastrzeżone.</span>
                        </div>

                        <hr class="section-divider w-64 my-4 ml-auto" />

                        <div>
                            <LinkPrimary to="Start" text="BUZON.STUDIO" />
                        </div>

                    </div>
                </div>
            </div>
            <div class="scroll-blocker"></div>
        </section>
    </footer>
</template>

<script>
let name = import.meta.env.VITE_NAME;
let email = import.meta.env.VITE_EMAIL;
let phone = import.meta.env.VITE_PHONE;
let fb = import.meta.env.VITE_FB;
let ig = import.meta.env.VITE_IG;

import { Icon } from "@iconify/vue";

import { LinkPrimary, SocialIcons, ToggleThree } from "../../components";

export default {
    data() {
        return {
            name: name,
            email: email,
            phone: phone,
            fb: fb,
            ig: ig,
        };
    },

    components: {
        LinkPrimary,
        SocialIcons,
        ToggleThree,
        Icon
    },
};
</script>

<style lang="scss">
@import "./Footer.scss";
</style>
