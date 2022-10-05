<template>
    <ul class="skipLink cursor-pointer">
        <li>
            <a href="#main" ref="skipLink">Przejdź do głównej treści</a>
        </li>
    </ul>
</template>
<script></script>
<style lang="scss">
.skipLink {
    white-space: nowrap;
    margin: 1em auto;
    top: 0;
    position: fixed;
    left: 50%;
    margin-left: -72px;
    opacity: 0;

    &:hover {
        opacity: 1 !important;
        background-color: white;
        padding: 0.5em;
        border: 1px solid black;
    }
}
</style>
