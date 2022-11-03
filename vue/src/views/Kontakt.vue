<template>
    <main>
        <LandingPage h1="Zacznijmy owocną współpracę!"
            h2="Powiedz nam czego potrzebujesz, a my zrealizujemy to od A do Z." />
        <EmailForm />
        <Footer />
    </main>
</template>

<script>
import { Footer, EmailForm, LandingPage } from "../containers";
export default { name: "Kontakt", components: { Footer, EmailForm, LandingPage } };
</script>
