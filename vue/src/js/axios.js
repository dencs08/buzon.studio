import axios from 'axios';

const axiosClient = axios.create({
    baseURL: `${import.meta.env.VITE_API_BASE_URL}/api`,
    withCredentials: false,
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
})

axiosClient.interceptors.request.use(config => {
    return config;
})

export default axiosClient;