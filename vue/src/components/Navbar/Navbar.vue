<template>
    <header g-component="Navbar" data-header class="fixed">
        <div class="px-1 md:px-3 w-screen flex grow h-[100px]">
            <div class="flex items-center">
                <a href="/start">
                    <img
                        src=""
                        class="h-[50px]"
                        alt="buzonstudio logo (branding)"
                    />
                </a>
            </div>
            <div class="flex grow items-center justify-end">
                <button
                    data-hamburger
                    class="hamburger hamburger--collapse p-0 flex items-center"
                    type="button"
                    aria-label="Menu"
                    aria-controls="navigation"
                    aria-expanded="false"
                >
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
        </div>
    </header>

    <nav data-navigation id="navigation" class="fixed hidden">
        <div class="wrapper flex">
            <div class="container">
                <div
                    class="w-full h-[90%] content-center grid lg:gap-4 lg:grid-cols-2"
                >
                    <div
                        class="flex justify-start lg:justify-center items-center"
                    >
                        <ul class="pl-0">
                            <li>
                                <span class="nav-number">01</span>
                                <a
                                    web-link
                                    href="/start"
                                    class="link-primary font-family-header"
                                >
                                    Strona Główna
                                </a>
                            </li>
                            <li>
                                <span class="nav-number">02</span>
                                <a
                                    web-link
                                    href="/oferta"
                                    class="link-primary font-family-header"
                                >
                                    Oferta
                                </a>
                            </li>
                            <li>
                                <span class="nav-number">03</span>
                                <a
                                    web-link
                                    href="/portfolio"
                                    class="link-primary font-family-header"
                                >
                                    Portfolio
                                </a>
                            </li>
                            <li>
                                <span class="nav-number">04</span>
                                <a
                                    web-link
                                    href="/kontakt"
                                    class="link-primary font-family-header"
                                >
                                    Kontakt
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div
                        class="nav-contact flex justify-start lg:justify-center items-center mt-6 lg:mt-0"
                    >
                        <div class="my-0 font-color-secondary">
                            <a
                                href="mailto:?subject = Oferta&body = Wiadomość"
                                class="underline-primary mail-link font-medium font-color-secondary"
                            >
                            </a>
                        </div>
                        <div class="my-0 font-color-dark"></div>
                    </div>
                </div>
            </div>
            <div class="flex justify-center items-end space-x-8">
                <div class="icon-wrapper inline-block">
                    <a href="" rel="noreferrer" target="_blank">
                        <img src="" alt="" />
                    </a>
                </div>
                <div class="icon-wrapper inline-block">
                    <a href="" rel="noreferrer" target="_blank">
                        <img src="" alt="" />
                    </a>
                </div>
            </div>
        </div>
    </nav>
</template>

<script></script>

<style>
/* @import "./navbar.scss"; */
</style>
