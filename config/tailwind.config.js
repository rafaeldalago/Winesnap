const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'pale_background': '#f2ebe6',

        'dark_green': '#2c6159',
        'light_green': '#ebf1f3',

        'dark_cherry': '#a12a45',
        'cherry': '#d0a2aa',
        'light_cherry': '#fff0f3',
        'action_cherry': '#e1544d',

        'dark_yellow': '#fca002',
        'yellow': '#fcdca8',
        'light_yellow': '#fcf9e8',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
