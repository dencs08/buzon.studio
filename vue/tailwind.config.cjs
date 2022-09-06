/** @type {import('tailwindcss').Config} */
module.exports = {
  corePlugins: {
    container: false
  },
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
