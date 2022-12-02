import { createRouter, createWebHistory } from "vue-router";

import DefaultLayout from '../Layouts/DefaultLayout.vue'
import AdminLayout from '../Layouts/AdminLayout.vue'

import { Start, Portfolio, Oferta, Kontakt, Prywatnosc, Projekt, NotFound, Dashboard, Login } from '../views'

const routes = [
    {
        component: DefaultLayout,
        path: '/start',
        children: [
            { path: '/start', name: 'Start', component: Start }
        ]
    },

    {
        path: '/',
        redirect: '/start'
    },

    {
        component: DefaultLayout,
        path: '/',
        children: [
            { path: '/start', component: Start }
        ]
    },

    {
        component: DefaultLayout,
        path: '/portfolio',
        children: [
            { path: '/portfolio', name: 'Portfolio', component: Portfolio }
        ]
    },
    {
        component: DefaultLayout,
        path: '/oferta',
        children: [
            { path: '/oferta', name: 'Oferta', component: Oferta }
        ]
    },
    {
        component: DefaultLayout,
        path: '/kontakt',
        children: [
            { path: '/kontakt', name: 'Kontakt', component: Kontakt }
        ]
    },
    {
        component: DefaultLayout,
        path: '/projekt/:projectName',
        children: [
            { path: '/projekt/:projectName', name: 'Projekt', component: Projekt, meta: { transition: 'fade' }, },
        ]
    },
    {
        component: DefaultLayout,
        path: '/polityka',
        children: [
            { path: '/polityka', name: 'Prywatnosc', component: Prywatnosc }
        ]
    },
    {
        component: DefaultLayout,
        path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound
    },

    {
        component: AdminLayout,
        path: '/admin',
        children: [
            { path: '/admin', component: Dashboard },
            { path: '/login', component: Login }
        ]
    }

]

const router = createRouter({
    routes,
    history: createWebHistory(),
})

export default router;