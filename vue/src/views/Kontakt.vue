<template>
    <main>
        <section id="landing-page">
            <div class="container pt-32 section-mb">
                <h1 class="leading-[100%]">Zacznijmy owocną współpracę!</h1>

                <h2 class="mb-5">
                    Powiedz nam czego potrzebujesz, a my zrealizujemy to od A do
                    Z.
                </h2>

                <!-- <x-arrow /> -->
            </div>
        </section>
        <EmailForm />
        <Footer />
    </main>
</template>

<script>
import { Footer, EmailForm } from "../containers";
export default { name: "Kontakt", components: { Footer, EmailForm } };
</script>
