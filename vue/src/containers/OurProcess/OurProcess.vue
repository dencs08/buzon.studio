<template>
    <section id="process" class="mb-16 md:mb-32">
        <div class="container">
            <div class="block md:grid md:grid-cols-2 mb-8 md:mb-20">
                <div class="uppercase mb-5 md:mb-0">
                    <SectionHeader
                        mainHeader="Nasz Proces"
                        :wordBreak="true"
                        :big="true"
                    />
                </div>
                <div class="space-y-8">
                    <OurProcessItem
                        title="Dialog"
                        paragraph="Podstawą każdego dobrze zrealizowanego projektu jest zrozumienie Twoich potrzeb w celu realizacji odpowiedniej wizji i wymagań. Wspólnie analizujemy podstawy i kryteria, które muszą być spełnione."
                    />
                    <OurProcessItem
                        title="Koncepcja"
                        paragraph="Opracowujemy środowisko i wykonanie technicznege w celu przygotowania szczegółowej strategii dla projektu. Tworzymy koncepcje wizualne w celu ożywienia doświadczenia, nad którym pracujemy."
                    />
                    <OurProcessItem
                        title="Realizacja"
                        paragraph="Gdy wszystko jest gotowe, zaczynamy techniczne prace nad projektem, zgodnie z wcześniej ustalonymi kryteriami tak aby produkt był dostosowany do Twoich potrzeb."
                    />
                    <OurProcessItem
                        title="Dystrybucja"
                        paragraph="Wykonujemy końcową analizę naszej pracy i upewniamy się, że uzgodnione warunki zostały spełnione. Ostatnim krokiem jest wdrożenie Twojego nowego produktu w życie."
                    />
                </div>
            </div>

            <a href="/kontakt" class="link-activate-wrapper-paragraph">
                <span class="font-color-darker">
                    Jeśli jesteś zainteresowany
                </span>
                <LinkPrimary
                    href="/kontakt"
                    text="zdzwońmy się."
                    :primary="true"
                />
            </a>
        </div>
    </section>
</template>

<script>
import { OurProcessItem, LinkPrimary, SectionHeader } from "../../components";
export default {
    components: {
        OurProcessItem,
        LinkPrimary,
        SectionHeader,
    },
};
</script>

<style lang="scss" scoped>
@import "./ourprocess.scss";
</style>
