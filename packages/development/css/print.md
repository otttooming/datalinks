---
layout: page
title: Print
---

# CSS

- [cognitom/paper-css](https://github.com/cognitom/paper-css)

# Misc

<https://developer.mozilla.org/en-US/docs/Web/CSS/page-break-inside> <https://developer.mozilla.org/en/docs/Web/CSS/page-break-after>

```css
page-break-inside: avoid;

@page {
  size: A4;
  margin: 0;
}
@media print {
  html,
  body {
    width: 210mm;
    height: 297mm;
  }
  /* ... the rest of the rules ... */
}
```

<http://stackoverflow.com/questions/16649943/css-to-set-a4-paper-size>

```css
@media print {
  div {
    float: none !important;
    position: static !important;
    display: inline;
    box-sizing: content-box !important;

    float: none !important;
    position: static !important;
    display: block !important;
    box-sizing: content-box !important;

    display: block !important; // Fix for FF not showing next page.
  }
}
```

<http://stackoverflow.com/questions/4884380/css-page-break-not-working-in-all-browsers>

Setting float:none on all parent elements makes page-break-before:always work correctly.

overflow:visible to the body tag worked!! Changing or overwriting display:inline-block; with display:block should work. display:flex seems to mess things up as well.

Parent elements can not have float on them.

Setting float:none on all parent elements makes page-break-before:always work correctly.

<http://lawrencenaman.com/optimisation/print-media-queries-not-working/> <https://addons.mozilla.org/en-US/firefox/addon/60> CSS -> Display CSS by media type -> Print

FF shift->f2 media emulate print <https://developer.mozilla.org/en-US/docs/Tools/GCLI>

<http://stackoverflow.com/questions/9519556/faster-way-to-develop-and-test-print-stylesheets-avoid-print-preview-every-time>

<http://www.smashingmagazine.com/2015/01/designing-for-print-with-css/> <http://stackoverflow.com/questions/3341485/how-to-make-a-html-page-in-a4-paper-size-pages>
