<template>
    <section id="process" class="mb-16 md:mb-32">
        <div class="container">
            <div class="block md:grid md:grid-cols-2 mb-8 md:mb-20">
                <div class="uppercase headerline">
                    <div>
                        <h3>Nasz</h3>
                    </div>
                    <div>
                        <h3>Proces</h3>
                    </div>
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
            <div class="link-activate-wrapper contact font-color-dark">
                <a href="/kontakt"
                    >Jeśli jesteś zainteresowany
                    <a
                        href="/kontakt"
                        class="underline-primary font-color-primary"
                    >
                        zdzwońmy się
                    </a>
                </a>
            </div>
        </div>
    </section>
</template>

<script>
import { OurProcessItem } from "../../components";
export default {
    components: {
        OurProcessItem,
    },
};
</script>

<style scoped>
@import "./ourprocess.scss";
</style>
