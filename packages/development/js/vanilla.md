---
layout: page
title: Plain vanilla javascript
---

## Vanilla

- [Vanilla JavaScript for building powerful web applications](https://plainjs.com/)

- [You might not need JQuery](http://youmightnotneedjqueryplugins.com)

- [The Vanilla Javascript Repository](http://www.vanillalist.com)

- [BackgroundCheck](http://www.kennethcachia.com/background-check/)

- [lazySizes is the ultimate and lightweight lazyLoader](http://afarkas.github.io/lazysizes/)

- [Trianglify - algorithmically generated triangle art](https://github.com/qrohlf/trianglify)

## Code exmaples

```js
var request = new XMLHttpRequest();
request.open(
  'GET',
  document.querySelector('.edy-assets').getAttribute('data-pagination-url'),
  true,
);
// request.setRequestHeader("Content-type", "application/javascript");
// request.setRequestHeader("Cache-Control", "no-cache"); // For no cache

request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Success!
    console.log('AJAX');
  } else {
    // We reached our target server, but it returned an error
  }
};
request.send();
```
