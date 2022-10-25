<template>
    <div class="grid-item main-track bg-transparent font-color-primary p-0">
        <div class="slide-track w-full whitespace-nowrap bg-transparent">
            <SliderItem title="danfit"
                info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam."
                :category="['test1', 'test2', 'test3']" />
            <SliderItem title="bielanypark"
                info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                :category="['test14', 'test24', 'test34']" />
            <SliderItem title="zielonewidoki"
                info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                :category="['test13', 'test23', 'test33']" />
            <SliderItem title="watch3d"
                info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                :category="['test13', 'test23', 'test33']" />
            <SliderItem title="komb"
                info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                :category="['komb', 'test23', 'test33']" />
            <SliderItem title="moss"
                info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                :category="['test13', 'test23', 'test33']" />
        </div>
    </div>
</template>

<script>
import { SliderItem } from '../'
export default {
    components: {
        SliderItem
    },
}
</script>

<style lang="scss" scoped>
@import './ourworksslider.scss';
</style>
