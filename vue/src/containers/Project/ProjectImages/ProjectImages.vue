<template>
    <!-- @if (!empty($images)) -->
    <section id="images">
        <div class="container">
            <!-- @foreach($images as $image) -->
            <div class="portfolio_image_wrapper">
                <img
                    src="images/portfolio/' . $name . '/' . $image . '.jpg"
                    alt=""
                />
            </div>
            <!-- @endforeach -->
        </div>
    </section>
</template>

<script></script>

<style lang="scss" scoped>
@import "./projectimages.scss";
</style>
