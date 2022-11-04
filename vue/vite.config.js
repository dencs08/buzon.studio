import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import laravel from 'laravel-vite-plugin'

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    hmr: {
      host: 'localhost',
    },
  },
  plugins: [
    vue(),
  ]
})
