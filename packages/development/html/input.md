---
layout: page
title: Input field
---

# Input field

- [algolia/places](https://github.com/algolia/places)

  > Turn any <input> into an address autocomplete

## Autosize input field with hidden element

Specific implementations use out of viewport or hidden element to calculate _input_ field length.

- **_GitHub_** [jQuery.Autosize.Input](https://github.com/MartinF/jQuery.Autosize.Input)

  > A jQuery plugin which automatically resizes the width of input fields according to the content, while typing.

- [**_GitHub_** React-Input-Autosize](https://github.com/JedWatson/react-input-autosize)

  > Auto-resizing input field for React

- [**_GitHub_** autosize-input.js](https://github.com/yuanqing/autosize-input)
  > Effortless, dynamic-width text boxes in vanilla JavaScript.

## Autosize input field with _contenteditable_ element

## Placeholder for _contenteditable_ element

```html
<span class="badge">
    <span contenteditable="true" id="new-tag" class="badge alert-info" data-placeholder="Make a new tag" data-focused-advice="Start typing"></span><i class="fa fa-lg fa-plus-circle"></i>
</span>
```

```css
span.badge[contenteditable] {
  display: inline-block;
}
span.badge[contenteditable]:empty::before {
  content: attr(data-placeholder);
  display: inline-block;
}
span.badge[contenteditable]:empty:focus::before {
  content: attr(data-focused-advice);
}
```

## Input type="number" numpads

- [I Wanted to Type a Number](https://www.filamentgroup.com/lab/type-number.html)
