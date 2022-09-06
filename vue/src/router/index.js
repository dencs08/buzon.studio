import { createRouter, createWebHistory } from "vue-router";

import DefaultLayout from '../Layouts/DefaultLayout.vue'

import { Start, Portfolio, Oferta, Kontakt, Prywatnosc, Projekt, NotFound } from '../views'

const routes = [
    {
        path: '/',
        // redirect: '/start',
        // name: 'Start',
        component: DefaultLayout,
        children: [
            { path: '/', name: 'StartFirst', component: Start },
            { path: '/start', name: 'Start', component: Start }
        ]
    },
    {
        path: '/portfolio',
        name: 'Portfolio',
        component: Portfolio
    },
    {
        path: '/oferta',
        name: 'Oferta',
        component: Oferta
    },
    {
        path: '/kontakt',
        name: 'Kontakt',
        component: Kontakt
    },
    {
        path: '/portfolio/:name',
        name: 'Projekt',
        component: Projekt
    },
    {
        path: '/polityka',
        name: 'Prywatnosc',
        component: Prywatnosc
    },
    { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound },

]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router;