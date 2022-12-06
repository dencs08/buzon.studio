import { createRouter, createWebHistory } from "vue-router";

import DefaultLayout from '../Layouts/DefaultLayout.vue'
import AdminLayout from '../Layouts/AdminLayout.vue'

import { Start, Portfolio, Oferta, Kontakt, Prywatnosc, Projekt, NotFound, Dashboard, Login, Overview, Emailing, Analitics, ExternalLinks } from '../views'

import { EmailPricing, EmailResponse } from '../components'

import { axiosAuthenticator } from '../js/axios'

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
        redirect: '/dashboard',
        children: [
            {
                path: '/dashboard/',
                component: Dashboard,
                name: 'Dashboard',
                redirect: '/dashboard/overview',
                beforeEnter: (to, from, next) => {
                    axiosAuthenticator.get('/api/authenticated').then(() => {
                        next()
                    }).catch(() => {
                        return next({ name: 'Login' })
                    })
                },

                children: [
                    {
                        path: '/dashboard/overview',
                        component: Overview,
                        name: 'Overview'
                    },
                    {
                        path: '/dashboard/emailing',
                        component: Emailing,
                        name: 'Emailing',
                        redirect: '/dashboard/emailing/pricing',
                        children: [{
                            path: '/dashboard/emailing/pricing',
                            component: EmailPricing,
                            name: 'EmailPricing'
                        },
                        {
                            path: '/dashboard/emailing/response',
                            component: EmailResponse,
                            name: 'EmailResponse'
                        }]
                    },
                    {
                        path: '/dashboard/analitics',
                        component: Analitics,
                        name: 'Analitics'
                    },
                    {
                        path: '/dashboard/externallinks',
                        component: ExternalLinks,
                        name: 'ExternalLinks'
                    }
                ]
            },
            {
                path: '/login',
                name: 'Login',
                component: Login,
            }
        ]
    }

]

const router = createRouter({
    routes,
    history: createWebHistory(),
})

export default router;