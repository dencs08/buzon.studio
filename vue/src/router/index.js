import { createRouter, createWebHistory } from "vue-router";
import Start from '../views/Start.vue'
import Portfolio from '../views/Portfolio.vue'
import Oferta from '../views/Oferta.vue'
import Kontakt from '../views/Kontakt.vue'

const routes = [
    {
        path: '/',
        name: 'Start',
        component: Start
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