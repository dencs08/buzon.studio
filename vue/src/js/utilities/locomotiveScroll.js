import LocomotiveScroll from 'locomotive-scroll'
import gsap from 'gsap'
import { ScrollTrigger } from 'gsap/ScrollTrigger';

let locoScroll;
let lsUpdate;

export function locoInit(timeout) {
    gsap.registerPlugin(ScrollTrigger);
    setTimeout(() => {
        const scrollEl = document.querySelector("main");
        locoScroll = new LocomotiveScroll({
            el: scrollEl,
            smooth: true,
            multiplier: 1,
            lerp: 0.135,
            getDirection: true,
            reloadOnContextChange: true,
            smartphone: {
                smooth: true
            },
            tablet: {
                smooth: true
            }
        });

        locoScroll.on("scroll", (args) => {
            document.documentElement.setAttribute('data-direction', args.direction)
        })

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
            pinType: document.querySelector("main").style.transform ? "transform" : "fixed"
        });

        lsUpdate = () => {
            locoScroll.update();
        };

        ScrollTrigger.addEventListener("refresh", () => lsUpdate);
        ScrollTrigger.refresh();

    }, timeout);
}

export function locoDestroy() {
    if (locoScroll) {
        ScrollTrigger.removeEventListener("refresh", lsUpdate);
        locoScroll.destroy();
        locoScroll = null;
        console.log("Kill", locoScroll);
    }
}