<template>
    <header class="fixed w-screen z-[9999]">
        <div class="flex min-h-[40px] h-[8vh]">
            <div class="flex items-center">
                <router-link :to="{ name: 'Start' }">
                    <img
                        src="../../assets/images/logos/buzonstudio_white_cropped.svg"
                        class="h-[30px] sm:h-[35px] md:h-[40px]"
                        alt="buzonstudio logo (branding)"
                    />
                </router-link>
            </div>
            <div class="flex grow items-center justify-end">
                <button
                    class="hamburger w-[35px] h-[35px] flex items-center"
                    type="button"
                    aria-label="Menu"
                    aria-controls="navigation"
                    aria-expanded="false"
                    @click="toggleNav"
                >
                    <span :class="{ active: isNavToggled }"></span>
                </button>
            </div>
        </div>
    </header>

    <nav
        class="fixed w-screen h-screen"
        :class="{ active: isNavToggled }"
        v-show="isNavToggled"
    >
        <div class="wrapper fixed top-0 left-0 flex flex-col">
            <div class="h-[94vh]">
                <div
                    class="container w-[100vw] h-[100%] grid content-center sm:grid-cols-2"
                >
                    <div class="flex sm:justify-center">
                        <ul class="pl-0">
                            <li>
                                <span class="nav-number">01</span>
                                <LinkPrimary
                                    to="Start"
                                    text="Strona Główna"
                                    class="font-family-header"
                                />
                            </li>
                            <li>
                                <span class="nav-number">02</span>
                                <LinkPrimary
                                    to="Oferta"
                                    text="Oferta"
                                    class="font-family-header"
                                />
                            </li>
                            <li>
                                <span class="nav-number">03</span>
                                <LinkPrimary
                                    to="Portfolio"
                                    text="Portfolio"
                                    class="font-family-header"
                                />
                            </li>
                            <li>
                                <span class="nav-number">04</span>
                                <LinkPrimary
                                    to="Kontakt"
                                    text="Kontakt"
                                    class="font-family-header"
                                />
                            </li>
                        </ul>
                    </div>
                    <div
                        class="nav-contact flex sm:justify-center items-center mt-6 lg:mt-0"
                    >
                        <div class="my-0 font-color-secondary">
                            <a
                                href="mailto:?subject = Oferta&body = Wiadomość"
                                class="underline-primary mail-link font-medium font-color-secondary"
                            >
                            </a>
                        </div>
                        <div class="my-0 font-color-dark">
                            <LinkPrimary
                                :href="`mailto:${email}?subject = Oferta&body = Wiadomość`"
                                :text="email"
                                :primary="true"
                                class="font-medium font-color-primary"
                            />
                            <h4
                                class="phone-number font-color-dark font-medium mb-2 mt-2"
                            >
                                {{ phone }}
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex justify-center space-x-5">
                <div class="icon-wrapper inline-block">
                    <a :href="fb" rel="noreferrer" target="_blank">
                        <FB />
                    </a>
                </div>
                <div class="icon-wrapper inline-block">
                    <a :href="ig" rel="noreferrer" target="_blank">
                        <IG />
                    </a>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
import { LinkPrimary, FB, IG } from "../";

let name = import.meta.env.VITE_NAME;
let email = import.meta.env.VITE_EMAIL;
let phone = import.meta.env.VITE_PHONE;
let fb = import.meta.env.VITE_FB;
let ig = import.meta.env.VITE_IG;

export default {
    data() {
        return {
            isNavToggled: false,

            name: name,
            email: email,
            phone: phone,
            fb: fb,
            ig: ig,
        };
    },
    methods: {
        toggleNav() {
            this.isNavToggled = !this.isNavToggled;
        },
    },

    components: {
        LinkPrimary,
        FB,
        IG,
    },
};
</script>

<style lang="scss">
@import "./navbar.scss";
</style>
