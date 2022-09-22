<template>
    <footer id="footer" class="mb-2 relative">
        <section>
            <hr class="section-divider mt-6 mb-10" />
            <section>
                <div class="container text-center md:text-left">
                    <a
                        href="/kontakt"
                        class="font-family-header text-uppercase lh-none link-primary"
                    >
                        <h3 class="my-2 my-md-0 link-bracket-display">
                            Zostańmy w kontakcie
                        </h3>
                    </a>
                    <div>
                        <div>
                            <LinkPrimary
                                :href="`mailto:${email}?subject = Oferta&body = Wiadomość`"
                                :text="email"
                                :secondary="true"
                                class="mail-link fw-medium font-color-secondary"
                            />

                            <h4
                                class="phone-number font-color-dark fw-medium mb-2 mt-2"
                            >
                                {{ phone }}
                            </h4>

                            <div
                                class="footer-social-icons mt-3 md:mt-5 space-x-2 md:space-x-4"
                            >
                                <a href="/start">
                                    <div class="inline-block link-primary">
                                        <img
                                            src="../../assets/images/logos/favicon/buzonstudio_favicon_white.svg"
                                            alt="logotyp buzonstudio"
                                        />
                                    </div>
                                </a>

                                <a :href="fb" rel="noreferrer" target="_blank">
                                    <div class="inline-block link-primary">
                                        <img
                                            src="../../assets/images/social/fb.svg"
                                            alt="buzonstudio facebook"
                                        />
                                    </div>
                                </a>

                                <a :href="ig" rel="noreferrer" target="_blank">
                                    <div class="inline-block link-primary">
                                        <img
                                            src="../../assets/images/social/ig.svg"
                                            alt="buzonstudio instagram"
                                        />
                                    </div>
                                </a>
                            </div>

                            <div class="footer-links uppercase mt-12 fw-light">
                                <ul class="space-y-2">
                                    <li>
                                        <LinkPrimary
                                            href="/start"
                                            text="start"
                                            :secondary="true"
                                        />
                                    </li>
                                    <li>
                                        <LinkPrimary
                                            href="/oferta"
                                            text="oferta"
                                            :secondary="true"
                                        />
                                    </li>
                                    <li>
                                        <LinkPrimary
                                            href="/portfolio"
                                            text="portfolio"
                                            :secondary="true"
                                        />
                                    </li>
                                    <li>
                                        <LinkPrimary
                                            href="/kontakt"
                                            text="kontakt"
                                            :secondary="true"
                                        />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div
                        data-gs
                        data-gs_fromBottom
                        class="font-family-header uppercase text-center md:text-left mt-14 space-y-2 md:space-y-0"
                    >
                        <div class="block md:inline-block mr-0 md:mr-4">
                            <LinkPrimary
                                href="/polityka"
                                text="Polityka prywatności"
                                :secondary="true"
                                class="font-color-dark"
                            />
                        </div>
                        <div class="block md:inline-block">
                            <span class="cursor-pointer font-color-dark"
                                >WYŁĄCZ 3D</span
                            >
                        </div>
                        <div
                            class="block md:inline-block float-none md:float-right"
                        >
                            <span class="font-color-darker"
                                >© 2021 {{ name }} wszelkie prawa
                                zastrzeżone.</span
                            >
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
let fb = import.meta.env.VITE_FB;
let ig = import.meta.env.VITE_IG;

import { LinkPrimary } from "../../components";

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
    },
};
</script>

<style lang="scss" scoped>
@import "./Footer.scss";
</style>
