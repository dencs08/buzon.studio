<template>
    <div class="grid-item main-track bg-transparent font-color-primary p-0 overflow-hidden mb-10 lg:mb-16">
        <div data-cursor="Przeciągnij" slide-track class="slide-track w-full overflow-hidden whitespace-nowrap bg-transparent cursor-grab">
            <SliderItem title="danfit"
                        info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam."
                        :category="['test1', 'test2', 'test3']" />
            <SliderItem title="bielanypark"
                        info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                        :category="['test14', 'test24', 'test34']" />
            <SliderItem title="castle3d"
                        info="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam omnis magnam delectus aliquid, officiis quibusdam"
                        :category="['test13', 'test23', 'test33']" />
        </div>
    </div>
</template>

<script>
import { SliderItem } from '../'

export default {
    components:{
        SliderItem
    }
}
</script>

<style lang="scss">@import './ourworksslider.scss';</style>
