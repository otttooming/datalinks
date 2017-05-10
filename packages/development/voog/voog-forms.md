---
layout: page
title: VOOG forms
---

```js
  form.addEventListener('submit', function(event) {
    event.preventDefault();
  ​
    if (input.value.length && validateEmail(input.value)) {
      document.body.classList.add('form-submitted');
  ​
      var request = new XMLHttpRequest();
      request.open('POST', location.href, true);
      request.send(new FormData(this));
    }
  });
```
