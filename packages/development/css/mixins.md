---
layout: page
title: SCSS mixins
---

## Sets

- **_GitHub_** [Family.scss](https://github.com/LukyVj/family.scss)
  _A set of Sass mixins which will help you to manage the style of :nth-child'ified elements, in an easy way._

- **_GitHub_** [Angled Edges](https://github.com/josephfusco/angled-edges)
  _A Sass mixin for creating angled edges on sections by dynamically encoding SVGs._

https://css-tricks.com/snippets/sass/maintain-aspect-ratio-mixin/

```scss
@mixin aspect-ratio($width, $height) {
  position: relative;
  &:before {
    display: block;
    content: '';
    width: 100%;
    padding-top: ($height / $width) * 100%;
  }
  > .content {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  }
}
```

### SCSS triangle mixin

```scss
@mixin triangle($width, $height, $color, $direction) {
  $width: $width/2;
  $color-border-style: $height solid $color;
  $transparent-border-style: $width solid transparent;
  height: 0;
  width: 0;
  @if $direction == up {
    border-bottom: $color-border-style;
    border-left: $transparent-border-style;
    border-right: $transparent-border-style;
  } @else if $direction == right {
    border-left: $color-border-style;
    border-top: $transparent-border-style;
    border-bottom: $transparent-border-style;
  } @else if $direction == down {
    border-top: $color-border-style;
    border-left: $transparent-border-style;
    border-right: $transparent-border-style;
  } @else if $direction == left {
    border-right: $color-border-style;
    border-top: $transparent-border-style;
    border-bottom: $transparent-border-style;
  }
}
```
