<template>
    <div ref="trigger" class="h-[auto] py-14 md:py-0 md:h-[100vh] flex flex-col justify-center">
        <router-link :to="{ name: to }" class="h-[60%] mb-12 md:mb-0">
            <div>
                <SectionHeader :mainHeader="title" :big="true" :move="true"
                    class="mb-6 sm:mb-8 md:mb-14 inline-block" />

                <div class="xs:flex flex-row xs:space-x-[10vw]">
                    <div class="mb-6 xs:mb-0">
                        <ItemHeader text="Produkty Cyfrowe" :normal="true" :move="true"
                            headerClass="inline-block uppercase mb-6 sm:mb-4 font-color-dark" />
                        <ul ref="ul1" class="dots space-y-1">
                            <li v-for="item in digital"><span>{{ item }}</span></li>
                        </ul>
                    </div>
                    <div>
                        <ItemHeader text="Branding" :normal="true" :move="true"
                            headerClass="inline-block uppercase mb-6 sm:mb-4 font-color-dark" />

                        <ul ref="ul2" class="dots space-y-1">
                            <li v-for="item in branding"><span>{{ item }}</span></li>
                        </ul>
                    </div>
                </div>

                <div v-if="buttons" class="mt-3 pr-3 md:pr-0 ml-2 md:ml-0">
                    <Button text="Oferta" class="mt-6" :arrow="true" :dark="true" />
                </div>
            </div>
        </router-link>
        <div ref="contact" class="contactUs flex items-end">
            <LinkParagraph :to="to" @mouseover="$refs.link2.animationStart()"
                @mouseleave="$refs.link2.handleMouseLeave()">
                <span ref="span" class="font-color-darker duration-200 kern-0 mr-2">
                    {{ bottomLinkText[0] }}</span>

                <LinkPrimary :to="to" :text="bottomLinkText[1]" :primary="true" class="font-medium" ref="link2" />

            </LinkParagraph>
        </div>
    </div>
</template>
<script>
import {
    ItemHeader,
    SectionHeader,
    Button,
    LinkParagraph,
    LinkPrimary
} from "../../components";

import { textRevealInline } from '../../js/textReveal'

export default {
    props: {
        title: String,
        digital: Array,
        branding: Array,
        bottomLinkText: Array,
        buttons: Boolean,
        to: String,
    },

    components: {
        ItemHeader,
        SectionHeader,
        Button,
        LinkParagraph,
        LinkPrimary
    },

    mounted() {
        let uls = [this.$refs.ul1, this.$refs.ul2]
        uls.forEach(ul => {
            ul.childNodes.forEach(li => {
                textRevealInline(li.childNodes[0], this.$refs.trigger, true, false, false, true);
            });
        });
    },
}
</script>
<style lang="scss" scoped>
@import './ouroffercolumn.scss';
</style>