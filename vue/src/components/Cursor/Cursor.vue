<template>
    <div ref="cursor"
        class="cursor grid content-center absolute rounded-full pointer-events-none select-none z-[10000] w-[100px] h-[100px]">
        <div ref="label" class="label text-center uppercase font-bold z-[10001] pointer-events-none opacity-1">
        </div>
    </div>
</template>

<script>
import gsap from "gsap";
import { nextTick } from "vue";
export default {
    setup() {
        let cursor, label;

        return { cursor, label }
    },
    mounted() {
        this.cursor = this.$refs.cursor;
        this.label = this.$refs.label;

        if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
            this.mobile();
            return;
        }
        this.desktop();
    },

    watch: {
        '$route'(to, from) {
            this.getCursorTriggers()
        }
    },

    methods: {
        async getCursorTriggers() {
            await nextTick();
            setTimeout(() => {
                var element = document.querySelectorAll('[data-cursor]');
                console.log(element);
            }, []);
        },

        mobile() {
            this.cursor.style.display = "none";
            this.label.style.display = "none";
        },

        desktop() {
            let _this = this;

            var posX = 0,
                posY = 0;

            var mouseX = 0,
                mouseY = 0;

            gsap.to(_this.cursor, {
                duration: 0.005,
                repeat: -1,
                onRepeat: function () {
                    posX += (mouseX - posX) / 9;
                    posY += (mouseY - posY) / 9;

                    gsap.set(_this.label, {
                        css: {
                            left: posX - 17,
                            top: posY - 14
                        }
                    });

                    gsap.set(_this.cursor, {
                        css: {
                            left: mouseX,
                            top: mouseY
                        }
                    });

                }
            });
            document.addEventListener("mousemove", function (e) {
                mouseX = e.pageX;
                mouseY = e.pageY;
            });
        },
    },
};
</script>

<style lang="scss">
@import "./cursor.scss";
</style>
