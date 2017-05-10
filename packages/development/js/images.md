---
layout: page
title: Images
---

# Lightboxes

## PhotoSwipe

### Next/prev not respecting loop: false

https://github.com/dimsemenov/PhotoSwipe/pull/980
https://github.com/candybanana/PhotoSwipe/blob/4859a41b489968c1496a50b3284fa8e7ae426f09/dist/photoswipe.js
https://github.com/candybanana/PhotoSwipe/blob/4859a41b489968c1496a50b3284fa8e7ae426f09/dist/photoswipe.js#L667

https://github.com/dimsemenov/PhotoSwipe/issues/860



```js
  getThumbBoundsFn: function(index) {
    var thumbnail = document.querySelectorAll('#asset_' + items[index].id + ' .edy-asset-preview')[0], // find thumbnail
        pageYScroll = window.pageYOffset || document.documentElement.scrollTop,
        rect = thumbnail.getBoundingClientRect();

    return {x:rect.left, y:rect.top + pageYScroll, w:rect.width};
  }
```

## Alternative lightboxes

* ***GitHub*** [DxF5H/lightbox](https://github.com/DxF5H/lightbox)
  > Doesn't need image dimensions

* ***Github*** [lightgallery.js](https://github.com/sachinchoolur/lightgallery.js)
  > No dependencies, no need for image dimensions

# Image preloading

* ***GitHub*** [Coloor - Image preloading utility](https://github.com/krasimir/coloor)
  > Coloor is a HTML preprocessor that decorates your <img> tags with data-coloor attributes containing a small base64 encoded version of your image. The idea is to quickly show the small image as a placeholder while the original one is loading.

## Dominant Colors for Lazy-Loading Images

* [Dominant Colors for Lazy-Loading Images](https://manu.ninja/dominant-colors-for-lazy-loading-images)
* ***GitHub*** [antimoderate](https://github.com/whackashoe/antimoderate)

## Better Portable Graphics

* ***WikiPedia*** [Better Portable Graphics](https://en.wikipedia.org/wiki/Better_Portable_Graphics)
  > Based on High Efficiency Video Coding (HVEC)
