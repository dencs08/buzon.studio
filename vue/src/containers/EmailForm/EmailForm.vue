<template>
    <section id="Contact">
        <div class="container text-center mb-12 md:mb-32">
            <div class="mb-10">
                <h3>Co możemy dla Ciebie zrobić?</h3>
            </div>

            <form
                id="contact-form"
                name="contact-form"
                class="contact-form validate-form"
                action=""
                method="post"
            >
                <div>
                    <div>
                        <div class="control-group-error">
                            <h3
                                class="control-group-error-text font-color-dark text-center hidden"
                            >
                                Wybierz conajmniej jedną z poniższych opcji:
                            </h3>
                        </div>
                        <div
                            class="control-group flex items-center justify-center"
                        >
                            <input
                                class="form_subject"
                                type="checkbox"
                                id="talk"
                                name="controlInfo[]"
                                value="Chcę porozmawiać"
                            />
                            <label cursor-shrink for="talk">
                                <span class="label-name">Chcę porozmawiać</span>
                            </label>

                            <input
                                class="form_subject"
                                type="checkbox"
                                id="website"
                                name="controlInfo[]"
                                value="Strona Internetowa"
                            />
                            <label cursor-shrink for="website">
                                <span class="label-name"
                                    >Strona Internetowa</span
                                >
                            </label>

                            <input
                                class="form_subject"
                                type="checkbox"
                                id="app"
                                name="controlInfo[]"
                                value="Aplikacja"
                            />
                            <label cursor-shrink for="app">
                                <span class="label-name">Aplikacja</span>
                            </label>

                            <input
                                class="form_subject"
                                type="checkbox"
                                id="branding"
                                name="controlInfo[]"
                                value="Branding"
                            />
                            <label cursor-shrink for="branding">
                                <span class="label-name">Branding</span>
                            </label>

                            <input
                                class="form_subject"
                                type="checkbox"
                                id="other"
                                name="controlInfo[]"
                                value="Coś Innego"
                            />
                            <label cursor-shrink for="other">
                                <span class="label-name">Coś Innego</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="section-divider my-10 md:my-16 lg:my-20" />

                <div class="md:grid md:grid-cols-2">
                    <div class="md:pr-5">
                        <div
                            class="form-field validate-input"
                            data-validate="To pole jest wymagane!"
                        >
                            <input
                                id="name"
                                name="name"
                                class="input-text js-input"
                                type="text"
                                required
                            />
                            <label for="name">Imię</label>
                            <!-- @error('name') -->
                            <!-- <span class="mt-3 text-alert"> {{ $message }} </span> -->
                            <!-- @enderror -->
                        </div>
                    </div>
                    <div class="md:pl-5">
                        <div
                            class="form-field validate-input"
                            data-validate="To pole jest wymagane!"
                        >
                            <input
                                id="email"
                                name="email"
                                class="input-text js-input"
                                type="email"
                                required
                            />
                            <label for="email">E-mail</label>
                            <!-- @error('email') -->
                            <!-- <span class="mt-3 text-alert"> {{ $message }} </span> -->
                            <!-- @enderror -->
                        </div>
                    </div>
                </div>
                <div>
                    <div
                        class="form-field validate-input"
                        data-validate="To pole jest wymagane!"
                    >
                        <textarea
                            id="content"
                            name="content"
                            class="input-text js-input"
                            cols="30"
                            rows="10"
                            required
                        ></textarea>
                        <label for="message">Wiadomość</label>
                        <!-- @error('content') -->
                        <!-- <span class="mt-3 text-alert"> {{ $message }} </span> -->
                        <!-- @enderror -->
                    </div>
                </div>
                <div>
                    <div
                        class="form-field text-center submit-container mt-2 mt-md-4 mt-lg-5 mb-3 mb-md-5"
                    >
                        <input
                            cursor-action
                            data-cursor-label="⟶"
                            type="submit"
                            value="WYŚLIJ"
                            class="btn btn-submit color"
                        />
                    </div>
                </div>
            </form>
        </div>
    </section>
</template>

<script></script>

<style scoped>
@import "./emailform.scss";
</style>
