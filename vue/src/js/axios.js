import axios from 'axios';

export const axiosClient = axios.create({
    baseURL: `${import.meta.env.VITE_API_BASE_URL}/api`,
    withCredentials: false,
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
})

export const axiosAuthenticator = axios.create({
    baseURL: `${import.meta.env.VITE_API_BASE_URL}`,
    withCredentials: true,
    headers: { 'Content-Type': 'application/json' },
})

axiosClient.interceptors.request.use(config => {
    return config;
})