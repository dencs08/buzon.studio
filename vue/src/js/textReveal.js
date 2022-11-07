import { splitToLines } from "./cloneSplit"

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

export function textReveal(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset) {
    splitToLines(text, false);
    reveal(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset);
}


export function textRevealInline(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset) {
    splitToLines(text, true);
    reveal(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset);
}

function reveal(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset) {
    // if (!window.matchMedia("(min-width: 1024px)").matches) return;
    if (!text) return;
    setTimeout(() => {
        if (!startOffset) startOffset = 0;

        let start, end, ease;
        let lines = text.querySelectorAll(".line");
        let offset = Math.floor((offsetHeight(text, trigger) / trigger.offsetHeight) * 100) + (startOffset) + "%";

        if (scrub > 0 || scrub != false) start = "50% 50%", ease = "none";
        if (scrub == 0 || scrub == false) start = `${offset} 80%`, ease = "expo";

        let tlScroll = gsap.timeline({ defaults: { ease: ease }, paused: true });
        tlScroll
            .fromTo(lines, { y: "100%" }, { y: "0%", duration: 1.35, stagger: 0.05 })

        if (animateOpacity) tlScroll.fromTo(lines, { opacity: 0 }, { opacity: 1, duration: 1, stagger: 0.05 }, "<");
        if (!revealOnly) tlScroll.to(lines, { y: "-100%", duration: 1, stagger: 0.05 });
        end = 1000

        gsap.registerPlugin(ScrollTrigger)
        ScrollTrigger.create({
            trigger: trigger,
            start: `${start}`,
            end: `+=${end}`,
            scroller: "#smoothScroll",
            animation: tlScroll,
            scrub: scrub,
            pin: pin,
            // markers: true,
        })
    }, 100);
}

function offsetHeight(el, div) {
    let offset = el.offsetTop - div.offsetTop;
    return offset;
}
