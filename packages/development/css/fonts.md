---
title: Fonts
layout: page
---

# Font weight names mapped to their numeric value

- 100 - Thin
- 200 - Extra Light, Ultra Light
- 300 - Light
- 400 - Normal, Book, Regular
- 500 - Medium
- 600 - Semi Bold, Demi Bold
- 700 - Bold
- 800 - Extra Bold, Ultra Bold
- 900 - Black, Heavy

# Font display

- **_MDN_** [@font-face font-display](https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display)
  > The font-display descriptor determines how a font face is displayed based on whether and when it is downloaded and ready to use.

```css
@font-face {
  font-family: ExampleFont;
  src: url(/path/to/fonts/examplefont.woff) format('woff'), url(/path/to/fonts/examplefont.eot)
      format('eot');
  font-weight: 400;
  font-style: normal;
  font-display: swap;
}
```

- **_CSS-tricks_** ['font-display' for the Masses](https://css-tricks.com/font-display-masses/)

# Typeface vertical alignment

## Tools

- [FontForge](https://fontforge.github.io)

## Issues

- **_SO_** [Different font vertical align in line on OS X](https://stackoverflow.com/questions/26100141/different-font-vertical-align-in-line-on-os-x)

- **_SO_** [Font Rendering / Line-Height Issue on Mac/PC (outside of element)](https://stackoverflow.com/questions/11726442/font-rendering-line-height-issue-on-mac-pc-outside-of-element)

- **_SO_** [Font: poor vertical metrics cause inconsistent line-height rendering across browsers. Solution?](https://stackoverflow.com/questions/33633992/font-poor-vertical-metrics-cause-inconsistent-line-height-rendering-across-brow)
