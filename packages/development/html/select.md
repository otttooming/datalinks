---
layout: page
title: Select
---

* [Choices.js](https://github.com/jshjohnson/Choices)
  > A vanilla, lightweight (~15kb gzipped 🎉), configurable select box/text input plugin. Similar to Select2 and Selectize but without the jQuery dependency.

### Trigger event for select option chage

```js
  $0.options[1].selected = true
  $0.dispatchEvent(new Event('change'))
```