import { splitToLines } from "./cloneSplit"

import gsap from 'gsap'
import ScrollTrigger from 'gsap/ScrollTrigger'

export function scrubTextReveal(text, trigger) {
    splitToLines(text);
    let words = text.querySelectorAll(".line");

    gsap.registerPlugin(ScrollTrigger)

    let tlScroll = gsap.timeline({ defaults: { ease: "expo" }, paused: true });
    tlScroll
        .fromTo(words, { y: "100%" }, { y: "0%", duration: 0.5, stagger: 0.05 })

    ScrollTrigger.create({
        trigger: trigger,
        start: "20% 100%",
        end: "+=1000",
        scroller: "#smoothScroll",
        animation: tlScroll,
        scrub: 1,
    })
}