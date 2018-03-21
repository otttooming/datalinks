---
layout: page
title: Testing
---

# Browser testing

* ***Medium*** [How to set up E2E browser testing for your GitHub project](https://hackernoon.com/how-to-set-up-e2e-browser-testing-for-your-github-project-89c24e15a84#.k0ww3req1)

* ***Medium*** [An Overview of JavaScript Testing in 2018](https://medium.com/welldone-software/an-overview-of-javascript-testing-in-2018-f68950900bc3)

# Headless browsers

* ***Google Developers*** [Getting Started with Headless Chrome](https://developers.google.com/web/updates/2017/04/headless-chrome)

* ***GitHub*** [chrome-headless-screenshots](https://github.com/schnerd/chrome-headless-screenshots)

* ***GitHub*** [chromeless](https://github.com/graphcool/chromeless)
  > Chrome automation made simple. Runs locally or headless on AWS Lambda.

* ***GitHub*** [Puppeteer](https://github.com/GoogleChrome/puppeteer)
  > Puppeteer is a Node library which provides a high-level API to control headless Chrome over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome.

* ***GitHub*** [GoogleChrome/rendertron](https://github.com/GoogleChrome/rendertron)
  > Rendertron is a dockerized, headless Chrome rendering solution designed to render & serialise web pages on the fly.

* ***GitHub*** [thal](https://github.com/emadehsan/thal)
  > Getting started with Puppeteer and Chrome Headless for Web Scraping

# Visual regression testing

* ***GitHub*** [BackstopJS](https://github.com/garris/BackstopJS)
  > BackstopJS automates visual regression testing of your responsive web UI by comparing DOM screenshots over time.
  > Render with Chrome Headless, Phantom and Slimer

* [Resemble.js : Image analysis and comparison](https://huddle.github.io/Resemble.js/)
  > Resemble.js analyses and compares images with HTML5 canvas and JavaScript.

* ***GitHub*** [Visual/CSS regression testing with PhantomJS](https://github.com/Huddle/PhantomCSS)

* ***GitHub*** [webdrivercss](https://github.com/webdriverio/webdrivercss)
  > Regression testing tool for WebdriverIO
  > **No longer maintained**

---

* ***GitHub*** [graphcool/chromeless](https://github.com/graphcool/chromeless)
  > Chrome automation made simple. Runs locally or headless on AWS Lambda.

## Articles

* [Visual regression testing using Jest, Chromeless and AWS Lambda](https://novemberfive.co/blog/visual-regression-testing-jest-chromeless-lambda/)

# Snippets

### Mock offsetWidth

```js
  Object.defineProperty(HTMLSpanElement.prototype, "offsetWidth", {
							   get: function(){return 5;},
                               });

  var x = document.getElementById("testspan");
  window.alert( x.offsetWidth );
```
