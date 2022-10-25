import clone from "./utilities/clone"
import SplitType from 'split-type'

export function splitCloneToChars(elementToSplit) {
    const chars = new SplitType(elementToSplit, { types: "chars" });
    clone(elementToSplit)
}

export function splitToWords(elementToSplit) {
    const words = new SplitType(elementToSplit, { types: 'words' });

    words.words.forEach(word => {
        wrap(word)
    });
}

export function splitToLines(elementToSplit) {
    const lines = new SplitType(elementToSplit, { types: 'lines' });

    console.log(lines);
    lines.lines.forEach(line => {
        wrap(line)
        line.classList.add("translate-y-[100%]")
    });
}

function wrap(toWrap, wrapper) {
    wrapper = wrapper || document.createElement('span');
    toWrap.parentNode.appendChild(wrapper);
    wrapper.classList.add('clip');
    wrapper.classList.add('inline-block');
    wrapper.append(' ')
    return wrapper.appendChild(toWrap);
};