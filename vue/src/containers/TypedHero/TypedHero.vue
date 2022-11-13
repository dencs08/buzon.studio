<template>
    <section ref="trigger" id="" class="flex items-center min-h-[50vh] md:h-[75vh]">
        <div class="container">
            <h1 ref="h1">
                <div>
                    <span id="typed">
                        Usługi
                    </span>
                </div>
                <div>
                    Pod Twoje potrzeby.
                </div>
            </h1>

            <h2 ref="h2">
                W naszym studio kreujemy prace które, działają, zdobywają serca
                użytkowników i zapadają w pamięć. Tworzymy wszystko od A do Z,
                tak jak chcesz.
            </h2>
            <!-- <x-arrow /> -->
        </div>
    </section>
</template>

<script>
import { textReveal } from '../../js/textReveal'
export default {
    mounted() {
        textReveal(this.$refs.h1, this.$refs.trigger, true, false, false, false);
        textReveal(this.$refs.h2, this.$refs.trigger, true, false, false, false);
    }
}
</script>

<style lang="scss" scoped>
@import "./typedhero.scss";

h1,
h2 {
    visibility: hidden;
}
</style>
