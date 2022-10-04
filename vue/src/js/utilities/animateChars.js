import gsap from "gsap";

export function animateIn(textToAnimate, textToAnimateSecond, yMove) {
    let tl = gsap.timeline({ paused: true });
    tl.to(textToAnimate, {
        duration: 0.3,
        y: "-100%",
        x: "15px",
        stagger: 0.02,
        ease: "power2.inOut",
    })
        .to(
            textToAnimateSecond,
            {
                duration: 0.35,
                y: "-100%",
                x: "15px",
                stagger: 0.02,
                ease: "power2",
            },
            "-=0.25"
        );

    return tl
}