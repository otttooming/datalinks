---
layout: page
title: URL
---

## URL queries

- [**_GitHub_** query-object](https://github.com/fernandofleury/query-object)

  > Easy url query string manipulation via Objects (using JavaScript)

- [**_GitHub_** query-string](https://github.com/sindresorhus/query-string)

  > Parse and stringify URL query strings

- [**_GitHub_** url-query](https://github.com/intesso/url-query)
  > return location.search as object

### Snippets

- [Get URL Variables](https://css-tricks.com/snippets/javascript/get-url-variables/)

```js
function getQueryVariable(variable) {
  var query = window.location.search.substring(1);
  var vars = query.split('&');

  for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split('=');
    if (pair[0] == variable) {
      return pair[1];
    }
  }

  return false;
}
```

```js
  getQueryVariable: function() {
    if (window.location.search === '') {
      return false;
    }

    var a=window.location.search.split(/\?/);
    var b=a[1].split("&");
    var c={};

    for(var i=0;i<b.length;i++){
      var d=b[i].split("=");
      c[d[0]]=d[1];
    }

    return c;
  }
```
