import axios from 'axios';

export const axiosClient = axios.create({
    baseURL: `${import.meta.env.VITE_API_BASE_URL}/api`,
    withCredentials: false,
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
})

export const axiosAuthenticator = axios.create({
    baseURL: `${import.meta.env.VITE_API_BASE_URL}`,
    withCredentials: true,
    headers: {
        'Authorization': 'Basic: ' + btoa('<secretName>:<secretPass>'),
        'Content-Type': 'multipart/form-data',
        'Accept': 'application/json'
    }
})


axiosClient.interceptors.request.use(config => {
    return config;
})