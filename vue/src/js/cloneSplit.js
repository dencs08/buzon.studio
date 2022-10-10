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

function wrap(toWrap, wrapper) {
    wrapper = wrapper || document.createElement('span');
    toWrap.parentNode.appendChild(wrapper);
    wrapper.classList.add('clip');
    wrapper.append(' ')
    return wrapper.appendChild(toWrap);
};