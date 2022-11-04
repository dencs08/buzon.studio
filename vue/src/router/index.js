import { createRouter, createWebHistory } from "vue-router";

// import DefaultLayout from '../Layouts/DefaultLayout.vue'

import { Start, Portfolio, Oferta, Kontakt, Prywatnosc, Projekt, NotFound } from '../views'

const routes = [
    {
        path: '/',
        children: [
            { path: '/', name: 'StartFirst', component: Start, redirect: '/start' },
            { path: '/start', name: 'Start', component: Start }
        ]
    },
    {
        path: '/portfolio',
        children: [
            { path: '/portfolio', name: 'Portfolio', component: Portfolio }
        ]
    },
    {
        path: '/oferta',
        children: [
            { path: '/oferta', name: 'Oferta', component: Oferta }
        ]
    },
    {
        path: '/kontakt',
        children: [
            { path: '/kontakt', name: 'Kontakt', component: Kontakt }
        ]
    },
    {
        path: '/projekt/:projectName',
        children: [
            { path: '/projekt/:projectName', name: 'Projekt', component: Projekt },
        ]
    },
    {
        path: '/polityka',
        children: [
            { path: '/polityka', name: 'Prywatnosc', component: Prywatnosc }
        ]
    },
    {
        path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound
    },

]

const router = createRouter({
    routes,
    history: createWebHistory(),
})

export default router;