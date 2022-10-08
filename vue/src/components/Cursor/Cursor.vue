<template>
    <div>
        <div ref="cursor"
            class="cursor absolute grid content-center rounded-full pointer-events-none select-none z-[10000]"
            :class="{'active' : isMouseOver}">
        </div>
        <div ref="label"
            class="label absolute text-center uppercase font-bold pointer-events-none select-none z-[10001]"
            :class="{'active' : isMouseOver}">
            <div id="circle" class="">
                <svg version=1.1 xmlns=http://www.w3.org/2000/svg xmlns:xlink=http://www.w3.org/1999/xlink x=0px y=0px
                    width=300px height=300px viewBox="0 0 300 300" enable-background="new 0 0 300 300"
                    xml:space=preserve>
                    <defs>
                        <path id=circlePath d="M 150, 150 m -65, 0 a 35,35 0 0,1 130,0 a 65,65 0 0,1 -130,0 " />
                    </defs>
                    <circle cx=150 cy=100 r=75 fill=none />
                    <g>
                        <use xlink:href="#circlePath" fill=none />
                        <text>
                            <textPath xlink:href="#circlePath">• {{dataCursorLabel}} • {{dataCursorLabel}}</textPath>
                        </text>
                    </g>
                </svg>
            </div>
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

        return { cursor, label, arrayOfElements, dataCursorLabel }
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
            }, [])
        },

        attachListeners() {
            let _this = this;
            this.arrayOfElements.forEach(element => {
                element.addEventListener("mouseover", function () {
                    if (_this.isMouseOver) return;
                    _this.isMouseOver = true
                    _this.dataCursorLabel = element.getAttribute("data-cursor")
                });
                element.addEventListener("mouseleave", function () {
                    if (!_this.isMouseOver) return;
                    _this.isMouseOver = false
                });
            });
        },

        restartCursor() {
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
