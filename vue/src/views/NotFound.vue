<template>
    <main>
        <div class="grid place-items-center h-screen">
            <div class="text-center">
                <h1>404</h1>
                <h2>Niestety nie znaleźliśmy tej strony...</h2>
                <h3 class="font-color-dark">
                    Powrót na stronę główną
                    <LinkPrimary
                        text="tutaj."
                        to="Start"
                        :primary="true"
                        class="font-color-primary"
                    />
                </h3>
            </div>
        </div>
    </main>
</template>

<script>
import { LinkPrimary } from "../components";
export default {
    components: {
        LinkPrimary,
    },
};
</script>

<style></style>
