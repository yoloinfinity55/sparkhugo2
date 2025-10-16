module.exports = {
  content: [
    './layouts/**/*.html',
    './content/**/*.md',
  ],
  theme: {
    extend: {
      colors: {
        // Warm sunshine blue palette
        sunshine: {
          50: '#f0f9ff',   // Lightest sky
          100: '#e0f2fe',  // Morning sky
          200: '#bae6fd',  // Clear sky
          300: '#7dd3fc',  // Bright day
          400: '#38bdf8',  // Sunny blue
          500: '#0ea5e9',  // Primary warm blue
          600: '#0284c7',  // Deep sky
          700: '#0369a1',  // Evening blue
          800: '#075985',  // Twilight
          900: '#0c4a6e',  // Night
        },
        // Warm accent colors
        warm: {
          50: '#fffbeb',   // Cream
          100: '#fef3c7',  // Light sand
          200: '#fde68a',  // Soft gold
          300: '#fcd34d',  // Golden
          400: '#fbbf24',  // Amber
          500: '#f59e0b',  // Warm orange
          600: '#d97706',  // Deep orange
          700: '#b45309',  // Bronze
          800: '#92400e',  // Brown
          900: '#78350f',  // Deep brown
        },
      },
    },
  },
  plugins: [],
}
