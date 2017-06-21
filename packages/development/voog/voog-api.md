---
layout: page
title: API
---

# Element search

> Ehitab elementide otsingut search vormiga - see jubin lõhub urlist parameetrid välja ja täidab selle otsinguvormi uuesti ära

```js
 $(document).ready(function(){
   var match,
       search = /([^&=]+)=?([^&]*)/g,
       decode = function (s) { return decodeURIComponent(s.replace(/\+/g," ")); },
       query  = window.location.search.substring(1);
     urlParam={};
     while (match=search.exec(query)) urlParam[decode(match[1])]=decode(match[2]);
     for (var k in urlParam) {
       if ($("select[name='"+k+"']").length) {
         $("select[name='"+k+"']").val(urlParam[k]);
       }
       else if ($("input[name='"+k+"']:visible").length) {
         $("input[name='"+k+"']").val(urlParam[k]);
       }
     }
 });
```
