import { createRouter, createWebHistory } from "vue-router";

import DefaultLayout from '../Layouts/DefaultLayout.vue'

import { Start, Portfolio, Oferta, Kontakt, Prywatnosc, Projekt, NotFound } from '../views'

const routes = [
    {
        path: '/',
        // redirect: '/start',
        // name: 'Start',
        // component: DefaultLayout,
        children: [
            { path: '/', name: 'StartFirst', component: Start },
            { path: '/start', name: 'Start', component: Start }
        ]
    },
    {
        path: '/portfolio',
        // name: 'Portfolio',
        // component: DefaultLayout,
        children: [
            { path: '/portfolio', name: 'Portfolio', component: Portfolio }
        ]
    },
    {
        path: '/oferta',
        // name: 'Oferta',
        // component: DefaultLayout,
        children: [
            { path: '/oferta', name: 'Oferta', component: Oferta }
        ]
    },
    {
        path: '/kontakt',
        // name: 'Kontakt',
        // component: DefaultLayout,
        children: [
            { path: '/kontakt', name: 'Kontakt', component: Kontakt }
        ]
    },
    {
        path: '/portfolio/:projectName',
        // name: 'Projekt',
        // component: DefaultLayout,
        children: [
            { path: '/portfolio/:projectName', name: 'Projekt', component: Projekt }
        ]
    },
    {
        path: '/polityka',
        // name: 'Prywatnosc',
        // component: DefaultLayout,
        children: [
            { path: '/polityka', name: 'Prywatnosc', component: Prywatnosc }
        ]
    },
    { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound },

]

const router = createRouter({
    scrollBehavior(to, from, savedPosition) {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                resolve({ left: 0, top: 0 })
            }, 300)
        })
    },
    routes,
    history: createWebHistory(),
})

export default router;