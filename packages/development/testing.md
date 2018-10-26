---
layout: page
title: Testing
---

# Component storybooks

- **_GitHub_** [c8r/kit](https://github.com/c8r/kit)
  > Tools for developing, documenting, and testing React component libraries

# Browser testing

- **_Medium_** [How to set up E2E browser testing for your GitHub project](https://hackernoon.com/how-to-set-up-e2e-browser-testing-for-your-github-project-89c24e15a84#.k0ww3req1)

- **_Medium_** [An Overview of JavaScript Testing in 2018](https://medium.com/welldone-software/an-overview-of-javascript-testing-in-2018-f68950900bc3)

# Headless browsers

- **_Google Developers_** [Getting Started with Headless Chrome](https://developers.google.com/web/updates/2017/04/headless-chrome)

- **_GitHub_** [chrome-headless-screenshots](https://github.com/schnerd/chrome-headless-screenshots)

- **_GitHub_** [chromeless](https://github.com/graphcool/chromeless)

  > Chrome automation made simple. Runs locally or headless on AWS Lambda.

- **_GitHub_** [Puppeteer](https://github.com/GoogleChrome/puppeteer)

  > Puppeteer is a Node library which provides a high-level API to control headless Chrome over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome.

- [checkly/puppeteer-recorder](https://github.com/checkly/puppeteer-recorder)

  > Puppeteer recorder is a Chrome extension that records your browser interactions and generates a Puppeteer script.

- [transitive-bullshit/awesome-puppeteer](https://github.com/transitive-bullshit/awesome-puppeteer)

  > A curated list of awesome puppeteer resources.

- **_GitHub_** [GoogleChrome/rendertron](https://github.com/GoogleChrome/rendertron)

  > Rendertron is a dockerized, headless Chrome rendering solution designed to render & serialise web pages on the fly.

- **_GitHub_** [thal](https://github.com/emadehsan/thal)
  > Getting started with Puppeteer and Chrome Headless for Web Scraping

# Visual regression testing

- **_GitHub_** [BackstopJS](https://github.com/garris/BackstopJS)

  > BackstopJS automates visual regression testing of your responsive web UI by comparing DOM screenshots over time.
  > Render with Chrome Headless, Phantom and Slimer

- **_GitHub_** [americanexpress/jest-image-snapshot](https://github.com/americanexpress/jest-image-snapshot)

- [Resemble.js : Image analysis and comparison](https://huddle.github.io/Resemble.js/)

  > Resemble.js analyses and compares images with HTML5 canvas and JavaScript.

- **_GitHub_** [storybook/addons/storyshots/](https://github.com/storybooks/storybook/tree/master/addons/storyshots)

  > StoryShots adds automatic Jest Snapshot Testing for Storybook.

- **_GitHub_** [oblador/loki](https://github.com/oblador/loki)

  > Visual Regression Testing for Storybook

- **_GitHub_** [Visual/CSS regression testing with PhantomJS](https://github.com/Huddle/PhantomCSS)

- **_GitHub_** [webdrivercss](https://github.com/webdriverio/webdrivercss)
  > Regression testing tool for WebdriverIO
  > **No longer maintained**

---

- **_GitHub_** [graphcool/chromeless](https://github.com/graphcool/chromeless)
  > Chrome automation made simple. Runs locally or headless on AWS Lambda.

## Articles

- [Visual regression testing using Jest, Chromeless and AWS Lambda](https://novemberfive.co/blog/visual-regression-testing-jest-chromeless-lambda/)

- [Screenshot testing with React and Storybook](https://medium.com/bleeding-edge/screenshot-testing-with-react-and-storybook-19ab7e49ec92)

- [Visual Regression Testing and React Storybook](https://www.robinwieruch.de/visual-regression-testing-react-storybook/)

# Snippets

### Mock offsetWidth

```js
Object.defineProperty(HTMLSpanElement.prototype, 'offsetWidth', {
  get: function() {
    return 5;
  },
});

var x = document.getElementById('testspan');
window.alert(x.offsetWidth);
```
