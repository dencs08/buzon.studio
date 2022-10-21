import LocomotiveScroll from 'locomotive-scroll'
import gsap from 'gsap'
import { ScrollTrigger } from 'gsap/ScrollTrigger';

let locoScroll;
// let lsUpdate;

export function locoInit(timeout) {
    gsap.registerPlugin(ScrollTrigger);
    setTimeout(() => {
        const scrollEl = document.querySelector("#smoothScroll");
        locoScroll = new LocomotiveScroll({
            el: scrollEl,
            smooth: true,
            multiplier: 1,
            lerp: 0.12,
            getDirection: true,
            reloadOnContextChange: true,
            smartphone: {
                smooth: false
            },
            tablet: {
                smooth: false
            }
        });

        locoScroll.stop()
        setTimeout(() => {
            locoScroll.start()
        }, 2000);

        locoScroll.on("scroll", (args) => {
            document.documentElement.setAttribute('data-direction', args.direction)
        })

        locoScroll.on("scroll", ScrollTrigger.update)

        ScrollTrigger.scrollerProxy(scrollEl, {
            scrollTop(value) {
                if (locoScroll) {
                    return arguments.length
                        ? locoScroll.scrollTo(value, 0, 0)
                        : locoScroll.scroll.instance.scroll.y;
                }
                return null;
            },
            scrollLeft(value) {
                if (locoScroll) {
                    return arguments.length
                        ? locoScroll.scrollTo(value, 0, 0)
                        : locoScroll.scroll.instance.scroll.x;
                }
                return null;
            },
            getBoundingClientRect() {
                if (locoScroll) {
                    return { top: 0, left: 0, width: innerWidth, height: innerHeight };
                }
                return null;
            },
            pinType: scrollEl.style.transform ? "transform" : "fixed"
        });

        ScrollTrigger.addEventListener("refresh", () => lsUpdate());
        ScrollTrigger.refresh();

    }, timeout);
}

function lsUpdate() {
    locoScroll.update();
}

export function locoDestroy() {
    if (locoScroll) {
        ScrollTrigger.removeEventListener("refresh", lsUpdate);
        locoScroll.destroy();
        locoScroll = null;
    }
}