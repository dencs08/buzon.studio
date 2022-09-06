<template>
    <section id="info" class="mb-10">
        <div class="container">
            <div>
                <h3 class="headerline font-family-header mb-2">
                    Podsumowanie realizacji
                </h3>
            </div>
            <div class="grid grid-cols-3 mb-5">
                <div>
                    <div>
                        <div>
                            <h4
                                class="font-family-primary font-color-primary my-0"
                            >
                                Opis
                            </h4>
                        </div>
                        <div>
                            <p>
                                {{ info }}
                            </p>
                        </div>
                    </div>
                </div>

                <!-- @if (!empty($responsibilities)) -->

                <div>
                    <div>
                        <div>
                            <h4
                                class="font-family-primary font-color-primary my-0"
                            >
                                Nasze zadanie
                            </h4>
                        </div>
                        <ul>
                            <!-- @foreach($responsibilities as $responsibility) -->
                            <li class="font-color-dark">
                                {{ $responsibility }}
                            </li>
                            <!-- @endforeach -->
                        </ul>
                    </div>
                </div>

                <!-- @endif -->

                <!-- @if (!empty($goals)) -->

                <div>
                    <div>
                        <div>
                            <h4
                                class="font-family-primary font-color-primary my-0"
                            >
                                Cel
                            </h4>
                        </div>
                        <ul>
                            <!-- @foreach($goals as $goal) -->
                            <li>{{ $goal }}</li>
                            <!-- @endforeach -->
                        </ul>
                    </div>
                </div>

                <!-- @endif -->
            </div>
            <!-- @if (!empty($website)) -->
            <div>
                <div>
                    <span class="uppercase website font-color-dark"
                        >Sprawdź stronę
                        <a
                            target="_blank"
                            rel="noopener"
                            href="https://bielanypark.pl/"
                            class="link-primary underline-primary text-uppercase"
                            >{{ $route.params.name }}</a
                        ></span
                    >
                </div>
            </div>
            <!-- @endif -->
        </div>
    </section>
</template>

<script></script>

<style></style>
