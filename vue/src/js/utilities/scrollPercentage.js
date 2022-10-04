export default function calculatePageScroll(heightElement) {
    var body = document.body,
        html = document.documentElement;

    var height = Math.max(
        body.scrollHeight,
        body.offsetHeight,
        html.clientHeight,
        html.scrollHeight,
        html.offsetHeight
    );
    let percentageScrolled = (window.scrollY / height) * 110;
    heightElement.style.transformOrigin = `50% ${percentageScrolled}%`;
}