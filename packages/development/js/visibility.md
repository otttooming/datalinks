---
layout: page
title: Visibility
---

- **_GitHub_** [True visibility - Checks if a DOM element is truly visible](https://github.com/UseAllFive/true-visibility)

```js
function elementInViewport(el) {
  var top = el.offsetTop;
  var left = el.offsetLeft;
  var width = el.offsetWidth;
  var height = el.offsetHeight;

  while (el.offsetParent) {
    el = el.offsetParent;
    top += el.offsetTop;
    left += el.offsetLeft;
  }

  return (
    top >= window.pageYOffset &&
    left >= window.pageXOffset &&
    top + height <= window.pageYOffset + window.innerHeight &&
    left + width <= window.pageXOffset + window.innerWidth
  );
}
```

```js
function elementInViewport2(el) {
  var top = el.offsetTop;
  var left = el.offsetLeft;
  var width = el.offsetWidth;
  var height = el.offsetHeight;

  while (el.offsetParent) {
    el = el.offsetParent;
    top += el.offsetTop;
    left += el.offsetLeft;
  }

  return (
    top < window.pageYOffset + window.innerHeight &&
    left < window.pageXOffset + window.innerWidth &&
    top + height > window.pageYOffset &&
    left + width > window.pageXOffset
  );
}
```

## Page Visibility API

- **_MozDev_** [Page Visibility API](https://developer.mozilla.org/en-US/docs/Web/API/Page_Visibility_API)

```js
// Set the name of the hidden property and the change event for visibility
var hidden, visibilityChange;

if (typeof document.hidden !== 'undefined') {
  // Opera 12.10 and Firefox 18 and later support
  hidden = 'hidden';
  visibilityChange = 'visibilitychange';
} else if (typeof document.mozHidden !== 'undefined') {
  hidden = 'mozHidden';
  visibilityChange = 'mozvisibilitychange';
} else if (typeof document.msHidden !== 'undefined') {
  hidden = 'msHidden';
  visibilityChange = 'msvisibilitychange';
} else if (typeof document.webkitHidden !== 'undefined') {
  hidden = 'webkitHidden';
  visibilityChange = 'webkitvisibilitychange';
}

var videoElement = document.getElementById('videoElement');

// If the page is hidden, pause the video;
// if the page is shown, play the video
function handleVisibilityChange() {
  if (document[hidden]) {
    videoElement.pause();
  } else {
    videoElement.play();
  }
}

// Warn if the browser doesn't support addEventListener or the Page Visibility API
if (
  typeof document.addEventListener === 'undefined' ||
  typeof document[hidden] === 'undefined'
) {
  alert(
    'This demo requires a browser, such as Google Chrome or Firefox, that supports the Page Visibility API.',
  );
} else {
  // Handle page visibility change
  document.addEventListener(visibilityChange, handleVisibilityChange, false);

  // Revert to the existing favicon for the site when the page is closed;
  // otherwise the favicon remains paused.png
  window.addEventListener(
    'unload',
    function() {
      favicon.change('/favicon.ico');
    },
    false,
  );

  // When the video pauses, set the favicon.
  // This shows the paused.png image
  videoElement.addEventListener(
    'pause',
    function() {
      favicon.change('images/paused.png');
    },
    false,
  );

  // When the video plays, set the favicon.
  videoElement.addEventListener(
    'play',
    function() {
      favicon.change('images/playing.png');
    },
    false,
  );

  // set the document (tab) title from the current video time
  videoElement.addEventListener(
    'timeupdate',
    function() {
      document.title = Math.floor(videoElement.currentTime) + ' second(s)';
    },
    false,
  );
}
```

```js
/**
 * Author: Jason Farrell
 * Author URI: http://useallfive.com/
 *
 * Description: Checks if a DOM element is truly visible.
 * Package URL: https://github.com/UseAllFive/true-visibility
 */
Element.prototype.isVisible = function() {
  'use strict';

  /**
   * Checks if a DOM element is visible. Takes into
   * consideration its parents and overflow.
   *
   * @param (el)      the DOM element to check if is visible
   *
   * These params are optional that are sent in recursively,
   * you typically won't use these:
   *
   * @param (t)       Top corner position number
   * @param (r)       Right corner position number
   * @param (b)       Bottom corner position number
   * @param (l)       Left corner position number
   * @param (w)       Element width number
   * @param (h)       Element height number
   */
  function _isVisible(el, t, r, b, l, w, h) {
    var p = el.parentNode,
      VISIBLE_PADDING = 2;

    if (!_elementInDocument(el)) {
      return false;
    }

    //-- Return true for document node
    if (9 === p.nodeType) {
      return true;
    }

    //-- Return false if our element is invisible
    if (
      '0' === _getStyle(el, 'opacity') ||
      'none' === _getStyle(el, 'display') ||
      'hidden' === _getStyle(el, 'visibility')
    ) {
      return false;
    }

    if (
      'undefined' === typeof t ||
      'undefined' === typeof r ||
      'undefined' === typeof b ||
      'undefined' === typeof l ||
      'undefined' === typeof w ||
      'undefined' === typeof h
    ) {
      t = el.offsetTop;
      l = el.offsetLeft;
      b = t + el.offsetHeight;
      r = l + el.offsetWidth;
      w = el.offsetWidth;
      h = el.offsetHeight;
    }
    //-- If we have a parent, let's continue:
    if (p) {
      //-- Check if the parent can hide its children.
      if (
        'hidden' === _getStyle(p, 'overflow') ||
        'scroll' === _getStyle(p, 'overflow')
      ) {
        //-- Only check if the offset is different for the parent
        if (
          //-- If the target element is to the right of the parent elm
          l + VISIBLE_PADDING > p.offsetWidth + p.scrollLeft ||
          //-- If the target element is to the left of the parent elm
          l + w - VISIBLE_PADDING < p.scrollLeft ||
          //-- If the target element is under the parent elm
          t + VISIBLE_PADDING > p.offsetHeight + p.scrollTop ||
          //-- If the target element is above the parent elm
          t + h - VISIBLE_PADDING < p.scrollTop
        ) {
          //-- Our target element is out of bounds:
          return false;
        }
      }
      //-- Add the offset parent's left/top coords to our element's offset:
      if (el.offsetParent === p) {
        l += p.offsetLeft;
        t += p.offsetTop;
      }
      //-- Let's recursively check upwards:
      return _isVisible(p, t, r, b, l, w, h);
    }
    return true;
  }

  //-- Cross browser method to get style properties:
  function _getStyle(el, property) {
    if (window.getComputedStyle) {
      return document.defaultView.getComputedStyle(el, null)[property];
    }
    if (el.currentStyle) {
      return el.currentStyle[property];
    }
  }

  function _elementInDocument(element) {
    while ((element = element.parentNode)) {
      if (element == document) {
        return true;
      }
    }
    return false;
  }

  return _isVisible(this);
};
```
