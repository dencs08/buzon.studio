<template>
    <header class="fixed w-screen z-[9999] container">
        <div class="flex min-h-[40px] h-[12vh] overflow-hidden">
            <div class="flex items-center">
                <router-link :to="{ name: 'Start' }" @click="this.toggleNav(true)" class="navLogoWrapper">
                    <img src="../../assets/images/logos/buzonstudio_white_cropped.svg"
                        class="min-h-[35px] h-[3.5vw] max-h-[100px] navLogo" alt="buzonstudio logo (branding)" />
                </router-link>
            </div>
            <div class="flex grow items-center justify-end">
                <button class="hamburger w-[35px] h-[35px] flex items-center" type="button" aria-label="Menu"
                    aria-controls="navigation" aria-expanded="false" @click="toggleNav">
                    <span :class="{ active: isNavToggled }"></span>
                </button>
            </div>
        </div>
    </header>

    <nav class="fixed w-screen h-screen opacity-0" :class="{ active: isNavToggled }" ref="nav">
        <div ref="navWrapper" class="wrapper fixed top-0 left-0 flex flex-col opacity-0 scale-[0.75]">
            <div class="h-[80vh] sm:h-[85vh]">
                <div class="container w-[100vw] h-[100%] grid content-center sm:grid-cols-2">
                    <div class="flex sm:justify-center mt-20">
                        <ul class="space-y-4 nav-links">
                            <li>
                                <LinkPrimary to="Start" text="Strona Główna" class="font-family-header" :split="true"
                                    :splitMove="40" data-count="01" @click="this.toggleNav(true)" />
                            </li>
                            <li>
                                <LinkPrimary to="Oferta" text="Oferta" class="font-family-header" :split="true"
                                    :splitMove="40" data-count="02" @click="this.toggleNav(true)" />
                            </li>
                            <li>
                                <LinkPrimary to="Portfolio" text="Portfolio" class="font-family-header" :split="true"
                                    :splitMove="40" data-count="03" @click="this.toggleNav(true)" />
                            </li>
                            <li>
                                <LinkPrimary to="Kontakt" text="Kontakt" class="font-family-header" :split="true"
                                    :splitMove="40" data-count="04" @click="this.toggleNav(true)" />
                            </li>
                        </ul>
                    </div>
                    <div class="flex sm:justify-center items-center mt-6 lg:mt-0">
                        <div class="my-0 font-color-dark nav-contact">
                            <LinkPrimary :href="`mailto:${email}?subject = Oferta&body = Wiadomość`" :text="email"
                                :primary="true" class="font-medium font-color-primary" />
                            <h4 class="phone-number font-color-dark font-medium mb-2 mt-2">
                                {{ phone }}
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container w-full">
                <hr ref="hr" class="section-divider m-0 p-0 scale-x-[0] w-full" />
            </div>
            <div
                class="px-[5vw] h-[20vh] sm:h-[15vh] grid content-center md:flex items-center justify-center md:justify-start w-full font-family-header">
                <div ref="navFooterLinks"
                    class="sm:flex sm:text-left text-center sm:space-x-4 space-y-1 sm:space-y-0 translate-y-[100px] opacity-0">
                    <div>
                        <LinkPrimary to="Prywatnosc" text="Polityka prywatności" :secondary="true"
                            class="font-color-dark" @click="this.toggleNav(true)" />
                    </div>
                    <div class="w-[5vw] flex justify-center">
                        <ToggleThree />
                    </div>
                    <div>
                        <span class="font-color-darker">© 2021 {{ name }} wszelkie prawa zastrzeżone.</span>
                    </div>
                </div>
                <div id="navFooterSocial" class="flex flex-row grow justify-center md:justify-end mt-4">
                    <SocialIcons ref="navFooterSocial" size="small" class="space-x-3" />
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
import gsap from "gsap";
import { LinkPrimary, SocialIcons, ToggleThree } from "../";

import { scrollProgress } from "../../js/utilities/locomotiveScroll";

let name = import.meta.env.VITE_NAME;
let email = import.meta.env.VITE_EMAIL;
let phone = import.meta.env.VITE_PHONE;

export default {
    data() {
        return {
            isNavToggled: false,
            isAnimating: false,

            name: name,
            email: email,
            phone: phone,
        };
    },

    methods: {
        toggleNav(nav) {
            if (nav === true) {
                this.isNavToggled = false;
                this.animation(false);
                return;
            }
            if (this.isAnimating) return;
            this.isNavToggled = !this.isNavToggled;
            this.animation(this.isNavToggled);
        },

        animation(open) {
            const RouterViewWrapper = document.getElementById("routerView");
            let tl = gsap.timeline();

            let percentageScrolled = document.documentElement.getAttribute('data-scroll-progress')
            RouterViewWrapper.style.transformOrigin = `50% ${percentageScrolled}%`;

            if (open === true) {
                this.animationOpen(tl, RouterViewWrapper);
                return;
            } else {
                this.animationClose(tl, RouterViewWrapper);
                return;
            }
        },

        animationOpen(tl, mainWrapper) {
            if (!this.isNavToggled) return;
            this.isAnimating = true;
            tl.to(mainWrapper, {
                duration: 0.5,
                opacity: 0,
                ease: "expo",
                scale: 1.2,
            })
                .to(
                    this.$refs.nav,
                    {
                        duration: 0.6,
                        opacity: 1,
                        ease: "power2.out",
                    },
                    "-=0.35"
                )
                .to(
                    this.$refs.navWrapper,
                    {
                        duration: 0.45,
                        opacity: 1,
                        scale: 1,
                        ease: "power2.out",
                    },
                    "-=0.4"
                )
                .to(
                    this.$refs.hr,
                    {
                        duration: 0.45,
                        scaleX: 1,
                        ease: "power2.out",
                    },
                    "-=0.35"
                )
                .to(
                    this.$refs.navFooterLinks,
                    {
                        duration: 0.45,
                        y: 0,
                        opacity: 1,
                        ease: "power2.out",
                    },
                    "-=0.35"
                )
                .to(
                    this.$refs.navFooterSocial.$el.children,
                    {
                        duration: 0.45,
                        opacity: 1,
                        stagger: 0.15,
                        ease: "power2.out",
                        onComplete: () => {
                            this.isAnimating = false;
                        },
                    },
                    "-=0.25"
                );
        },

        animationClose(tl, mainWrapper) {
            if (this.isNavToggled) return;
            this.isAnimating = true;
            tl.to(
                this.$refs.navFooterLinks,
                {
                    duration: 0.45,
                    y: "100px",
                    opacity: 0,
                    ease: "expo",
                },
                "0"
            )
                .to(
                    this.$refs.navFooterSocial.$el.children,
                    {
                        duration: 0.45,
                        opacity: 0,
                        stagger: 0.15,
                        ease: "expo",
                    },
                    "0"
                )
                .to(
                    this.$refs.hr,
                    {
                        duration: 0.45,
                        scaleX: 0,
                        ease: "expo",
                    },
                    "0"
                )
                .to(
                    this.$refs.navWrapper,
                    {
                        duration: 0.5,
                        opacity: 0,
                        scale: 0.75,
                        ease: "expo",
                    },
                    "-=0.6"
                )
                .to(
                    this.$refs.nav,
                    {
                        duration: 0.35,
                        opacity: 0,
                        ease: "expo",
                    },
                    "-=0.4"
                )
                .to(
                    mainWrapper,
                    {
                        duration: 0.75,
                        opacity: 1,
                        scale: 1,
                        ease: "expo",
                        onComplete: () => {
                            this.isAnimating = false;
                        },
                    },
                    "-=0.25"
                );
        },
    },

    components: {
        LinkPrimary,
        SocialIcons,
        ToggleThree,
    },
};
</script>

<style lang="scss">
@import "./navbar.scss";
</style>
