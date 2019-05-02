# Testing

- [cypress-io/cypress](https://github.com/cypress-io/cypress)

  > Fast, easy and reliable testing for anything that runs in a browser.

- [kulshekhar/ts-jest](https://github.com/kulshekhar/ts-jest)

  > TypeScript preprocessor with sourcemap support for Jest

## Component storybooks

- [c8r/kit](https://github.com/c8r/kit)

  > Tools for developing, documenting, and testing React component libraries

### Docz

- [pedronauck/docz](https://github.com/pedronauck/docz)

  > MDX based

- [hydrateio/docz-plugin-storybook](https://github.com/hydrateio/docz-plugin-storybook)

  > Docz plugin that makes migrating from Storybook a breeze.

### Storybook

- [tuchk4/storybook-readme](https://github.com/tuchk4/storybook-readme)

## Browser testing

- [How to set up E2E browser testing for your GitHub project](https://hackernoon.com/how-to-set-up-e2e-browser-testing-for-your-github-project-89c24e15a84#.k0ww3req1)

- [An Overview of JavaScript Testing in 2018](https://medium.com/welldone-software/an-overview-of-javascript-testing-in-2018-f68950900bc3)

## Headless browsers

- [Getting Started with Headless Chrome](https://developers.google.com/web/updates/2017/04/headless-chrome)

- [chrome-headless-screenshots](https://github.com/schnerd/chrome-headless-screenshots)

- [chromeless](https://github.com/graphcool/chromeless)

  > Chrome automation made simple. Runs locally or headless on AWS Lambda.

- [Puppeteer](https://github.com/GoogleChrome/puppeteer)

  > Puppeteer is a Node library which provides a high-level API to control headless Chrome over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome.

- [checkly/puppeteer-recorder](https://github.com/checkly/puppeteer-recorder)

  > Puppeteer recorder is a Chrome extension that records your browser interactions and generates a Puppeteer script.

- [transitive-bullshit/awesome-puppeteer](https://github.com/transitive-bullshit/awesome-puppeteer)

  > A curated list of awesome puppeteer resources.

- [GoogleChrome/rendertron](https://github.com/GoogleChrome/rendertron)

  > Rendertron is a dockerized, headless Chrome rendering solution designed to render & serialise web pages on the fly.

- [thal](https://github.com/emadehsan/thal)
  > Getting started with Puppeteer and Chrome Headless for Web Scraping

## Visual regression testing

- [BackstopJS](https://github.com/garris/BackstopJS)

  > BackstopJS automates visual regression testing of your responsive web UI by comparing DOM screenshots over time.
  > Render with Chrome Headless, Phantom and Slimer

- [americanexpress/jest-image-snapshot](https://github.com/americanexpress/jest-image-snapshot)

- [Resemble.js : Image analysis and comparison](https://huddle.github.io/Resemble.js/)

  > Resemble.js analyses and compares images with HTML5 canvas and JavaScript.

- [storybook/addons/storyshots/](https://github.com/storybooks/storybook/tree/master/addons/storyshots)

  > StoryShots adds automatic Jest Snapshot Testing for Storybook.

- [oblador/loki](https://github.com/oblador/loki)

  > Visual Regression Testing for Storybook

- [Visual/CSS regression testing with PhantomJS](https://github.com/Huddle/PhantomCSS)

---

- [graphcool/chromeless](https://github.com/graphcool/chromeless)
  > Chrome automation made simple. Runs locally or headless on AWS Lambda.

### Articles

- [Visual regression testing using Jest, Chromeless and AWS Lambda](https://novemberfive.co/blog/visual-regression-testing-jest-chromeless-lambda/)

- [Screenshot testing with React and Storybook](https://medium.com/bleeding-edge/screenshot-testing-with-react-and-storybook-19ab7e49ec92)

- [Visual Regression Testing and React Storybook](https://www.robinwieruch.de/visual-regression-testing-react-storybook/)

## Node.js

- [visionmedia/supertest](https://github.com/visionmedia/supertest)

  > Super-agent driven library for testing node.js HTTP servers using a fluent API

## Snippets

#### Mock offsetWidth

```js
Object.defineProperty(HTMLSpanElement.prototype, 'offsetWidth', {
  get: function() {
    return 5;
  },
});

var x = document.getElementById('testspan');
window.alert(x.offsetWidth);
```

## Jest

- [Raathigesh/majestic](https://github.com/Raathigesh/majestic)

  > Zero config GUI for Jest
