<template>
    <section id="landing-page" class="flex items-center">
        <div class="container">
            <h1>BUZONSTUDIO INNOWACYJNE USŁUGI IT.</h1>

            <h2 class="fw-normal font-family-primary">
                <span class="link-activate-wrapper-paragraph">
                    Jesteśmy kreatywnym studio w branży IT zajmującym sie
                    dostarczniem najlepszych
                    <LinkPrimary
                        href="/portfolio"
                        text="produktów"
                        :primary="true"
                        class="font-medium"
                    />
                </span>
                i
                <LinkPrimary
                    href="/oferta"
                    text="usług"
                    :primary="true"
                    class="font-medium"
                />
                <span class="link-activate-wrapper-paragraph">
                    IT. Tworzymy strony internetowe, wizualizacje, branding,
                    marketing online i inne produkty cyfrowe z pomocą metody
                    <span
                        data-tooltip="Dzięki All-in-One zaosczędzisz czas i pieniądze, nie martw się o zatrudnianie kilku zespołów osobno - my realizujemy wszystko od A do Z."
                        class="text-highlight cursor-pointer"
                    >
                        <LinkPrimary
                            href="/oferta"
                            text="All-in-One."
                            :primary="true"
                            class="font-medium"
                        />
                    </span>
                </span>
            </h2>
            <!-- <x-arrow/> -->
        </div>
    </section>
</template>

<script>
import { LinkPrimary } from "../../components";
export default {
    components: {
        LinkPrimary,
    },
};
</script>

<style lang="scss" scoped>
@import "./Hero.scss";
</style>
