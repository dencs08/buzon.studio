import { splitToLines } from "./cloneSplit"

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

export function textReveal(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset) {
    setTimeout(() => {
        splitToLines(text, false);
        revealClip(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset);
    }, []);
}

export function textRevealInline(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset) {
    setTimeout(() => {
        splitToLines(text, true);
        revealClip(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset);
    }, []);
}

export function elementReveal(el, trigger, startOffset) {
    setTimeout(() => {
        reveal(el, trigger, startOffset);
    }, []);
}

function revealClip(text, trigger, revealOnly, scrub, pin, animateOpacity, startOffset) {
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
            .to(text, { opacity: 1, autoAlpha: 1, duration: 0, })
            .to(lines, { y: "0%", duration: 1.35, stagger: 0.05 })

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

export function revealElement(el, trigger, startOffset) {
    // if (!window.matchMedia("(min-width: 1024px)").matches) return;
    if (!el) return;
    setTimeout(() => {
        if (!startOffset) startOffset = 0;

        let start, end, ease, triggerOffsetHeight;

        trigger.offsetHeight ? triggerOffsetHeight = trigger.offsetHeight : triggerOffsetHeight = 1000

        let offset = Math.floor((offsetHeight(el, trigger) / triggerOffsetHeight) * 100) + (startOffset) + "%";

        start = `${offset} 80%`, ease = "power.out";

        let tlScroll = gsap.timeline({ defaults: { ease: ease, opacity: 0 } });
        tlScroll
            .to(el, { autoAlpha: 1 })
            .to(el, { opacity: 1, duration: 10, stagger: 0.1 })
        end = 1

        gsap.registerPlugin(ScrollTrigger)
        ScrollTrigger.create({
            trigger: trigger,
            start: `${start}`,
            scroller: "#smoothScroll",
            animation: tlScroll,
            // markers: true,
        })
    }, 250);
}

function offsetHeight(el, div) {
    let divOffset = div.offsetTop;;
    if (!div.offsetTop) divOffset = 1;

    let offset = el.offsetTop - divOffset;

    return offset;
}
