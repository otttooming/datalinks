# Lazyload

## Intersection Observer API

- [Intersection Observer API](https://developer.mozilla.org/en-US/docs/Web/API/Intersection_Observer_API) - The Intersection Observer API provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.

- [**_Can I Use_** IntersectionObserver](http://caniuse.com/#search=IntersectionObserver)

- [Quick introduction to the Intersection Observer API](https://jeremenichelli.github.io/2016/04/quick-introduction-to-the-intersection-observer-api/) - The new Intersection Observer API is here as a response of developers trying to figure out the best way to detect when an element enters the viewport. Doing this is useful in a lot of cases like infinite scrolling, lazy loading images or animating content for example.

## Lazyloading scripts

```js
function loadScript(url) {
  let isLoaded = document.querySelectorAll('.search-script');
  if (isLoaded.length > 0) {
    return;
  }

  let myScript = document.createElement('script');
  myScript.src = url;
  myScript.className = 'search-script';
  document.body.appendChild(myScript);
}

var searchInput = document.querySelector('.algolia__input');

searchInput.addEventListener('focus', function(e) {
  loadScript('/path/to/search-script.js');
});
```
