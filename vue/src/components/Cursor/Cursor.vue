<template>
    <div>
        <div ref="cursor" class="cursor absolute grid content-center rounded-full pointer-events-none select-none z-[10000]"
             :class="{'active' : isMouseOver}">
        </div>
        <div ref="label" class="label absolute text-center uppercase font-bold pointer-events-none select-none z-[10001]" :class="{'active' : isMouseOver}">
            <span v-show="dataCursorLabel">{{dataCursorLabel}}</span>
        </div>
    </div>
</template>

<script>
import gsap from "gsap";

export default {
    data() {
        return { isMouseOver: false, label: null }
    },
    setup() {
        let cursor, label, arrayOfElements, dataCursorLabel;

        return { cursor, label, arrayOfElements,dataCursorLabel }
    },
    mounted() {
        this.cursor = this.$refs.cursor;
        this.label = this.$refs.label;

        if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
            this.mobile();
            return;
        }
        this.desktop()
    },

    methods: {
        getCursorTriggers() {
            setTimeout(() => {
                this.arrayOfElements = document.querySelectorAll('[data-cursor]');
                this.attachListeners();
            },[] )
        },

        attachListeners() {
            let _this = this;
            this.arrayOfElements.forEach(element => {
                element.addEventListener("mouseover", function () {
                    if(_this.isMouseOver) return;
                    _this.isMouseOver = true
                    _this.dataCursorLabel = element.getAttribute("data-cursor")
                });
                element.addEventListener("mouseleave", function () {
                    if(!_this.isMouseOver) return;
                    _this.isMouseOver = false
                });
            });
        },

        restartCursor(){
            this.isMouseOver = false;
        },

        mobile() {
            this.cursor.style.display = "none";
            this.label.style.display = "none";
        },

        desktop() {
            let _this = this;

            let posX = 0,
                posY = 0;

            let mouseX = 0,
                mouseY = 0;

            gsap.to(_this.cursor, {
                duration: 0.005,
                repeat: -1,
                onRepeat: function () {
                    posX += (mouseX - posX) / 9;
                    posY += (mouseY - posY) / 9;

                    gsap.set(_this.label, {
                        css: {
                            left: mouseX,
                            top: mouseY
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
