import { splitToLines } from "./cloneSplit"

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

export function textReveal(text, trigger, revealOnly, scrub, pin) {
    if (!window.matchMedia("(min-width: 1024px)").matches) return;

    setTimeout(() => {
        splitToLines(text);
        let start, end;
        let lines = text.querySelectorAll(".line");

        gsap.registerPlugin(ScrollTrigger)

        let tlScroll = gsap.timeline({ defaults: { ease: "expo" }, paused: true });
        tlScroll
            .fromTo(lines, { y: "100%" }, { y: "0%", duration: 1, stagger: 0.05 })
            .to(lines, { y: "0", duration: 0.75, stagger: 0.05 })

        if (!revealOnly) tlScroll.to(lines, { y: "-100%", duration: 1, stagger: 0.05 });

        if (scrub > 0 || scrub != false) start = "50% 50%";
        if (scrub == 0 || scrub == false) start = "20% 100%";

        end = 1000

        ScrollTrigger.create({
            trigger: trigger,
            start: `${start}`,
            end: `+=${end}`,
            scroller: "#smoothScroll",
            animation: tlScroll,
            scrub: scrub,
            pin: pin
        })
    }, 100);
}

// var wideScreen = window.matchMedia("(min-width: 800px)");
// var narrowScreen = window.matchMedia("(max-width: 799px)");

// if (wideScreen.matches) {

// }
// else {

// }