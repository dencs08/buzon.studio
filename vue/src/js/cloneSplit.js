import clone from "./utilities/clone"
import SplitType from 'split-type'

export default function cloneSplit(elementToSplit) {
    const text = new SplitType(elementToSplit, { types: "chars" });
    clone(elementToSplit)
}