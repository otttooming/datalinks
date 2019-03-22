---
layout: page
title: Scroll
---

# Scroll reveal

- [ScrollReveal](https://github.com/jlmakes/scrollreveal)

# Scroll direction

- [ScrollDir](https://github.com/dollarshaveclub/scrolldir)
  > ScrollDir, short for Scroll Direction, is a 0 dependency, ~1kb micro Javascript plugin to easily leverage vertical scroll direction in CSS via a data attribute.

# Smooth scroll

## Official

- [Element.scrollIntoView()](https://developer.mozilla.org/en/docs/Web/API/Element/scrollIntoView)
- **_Polyfill_** [smooth scroll polyfill](https://github.com/iamdustan/smoothscroll)

- [Smooth Scrolling](https://css-tricks.com/snippets/jquery/smooth-scrolling/)

## React

- [React Scroll-To](https://github.com/ganderzz/react-scroll-to)
  > A React component that helps in scrolling around a page.

## Alternative

- [Zenscroll](https://github.com/zengabor/zenscroll)

  > Smooth animated scrolling. Move elements into view, or scroll to any vertical position.

- [Jump.js: Smooth scroll](https://github.com/callmecavs/jump.js)

  > ES6
  > Component reengineered to edicy_cms

- [SmoothScroll](https://github.com/alicelieutier/smoothScroll)

- [smooth-scroll](https://github.com/cferdinandi/smooth-scroll)

- [better-scroll](https://github.com/ustbhuangyi/better-scroll)
  > inspired by iscroll, and it has a better scroll perfermance

# Prevent scroll leaking

## overscroll-behavior: contain

- [Scroll to the future, April 12, 2018](https://evilmartians.com/chronicles/scroll-to-the-future-modern-javascript-css-scrolling-implementations)

```css
.element {
  overscroll-behavior: contain;
}
```

## Best case solution

- [scrollable-overlay](https://github.com/Luxiyalu/scrollable-overlay)
  > Prevent body from scrolling when overlay is on, with pure CSS.

### getBoundingClientRect

The Element.getBoundingClientRect() method returns the size of an element and its position relative to the viewport.

- [getBoundingClientRect](https://developer.mozilla.org/en-US/docs/Web/API/Element/getBoundingClientRect)
