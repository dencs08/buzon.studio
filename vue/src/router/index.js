import { createRouter, createWebHistory } from "vue-router";

import DefaultLayout from '../Layouts/DefaultLayout.vue'

import Start from '../views/Start.vue'
import Portfolio from '../views/Portfolio.vue'
import Oferta from '../views/Oferta.vue'
import Kontakt from '../views/Kontakt.vue'

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
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router;