---
layout: page
title: Images
---

```bash
  openssl base64 < play.svg
```

```bash
  echo "background: url('data:image/svg+xml;base64,"$(openssl base64 < path/to/file.svg)"');"
```

# Best practices

- [Essential Image Optimization](https://images.guide/)

- [Fundamentals of Responsive Images](https://www.lullabot.com/articles/fundamentals-of-responsive-images)

# Responsive

- [Img srcset](https://css-tricks.com/responsive-images-youre-just-changing-resolutions-use-srcset/)

- [How to Build Responsive Images with srcset](https://www.sitepoint.com/how-to-build-responsive-images-with-srcset/)

- [The anatomy of responsive images](https://jakearchibald.com/2015/anatomy-of-responsive-images/)

- [Web Developer Reading List: Responsive Images](http://thenewcode.com/1177/Web-Developer-Reading-List-Responsive-Images)

# Aspect ratio

- [Aspect Ratio Boxes](https://css-tricks.com/aspect-ratio-boxes/)

## Mixins

```scss
@mixin aspect-ratio($width, $height) {
  position: relative;
  &:before {
    display: block;
    content: '';
    width: 100%;
    padding-top: ($height / $width) * 100%;
  }
  > .content {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  }
}
```

```
<div style="--aspect-ratio:16/9;">

[style*="--aspect-ratio"] {
  > :first-child { width: 100%; }
  > img          { height: auto; }

  @supports (--a:b) {
    position: relative;
    &::before {
      content: "";
      display: block;
      padding-bottom: calc(100% / (var(--aspect-ratio)));
    }
    > :first-child {
      position: absolute;
      top: 0; left: 0;
      height: 100%;
    }
  }
}
```

# Object fit

## Polyfills

- [bfred-it/object-fit-images](https://github.com/bfred-it/object-fit-images)

  > This adds support for object-fit and object-position to IEdge 9-13, Android < 5, Safari < 10 and skips browsers that already support them.

- [To Picturefill, or not to Picturefill](https://www.filamentgroup.com/lab/to-picturefill.html)

- [Neat trick for CSS object-fit fallback on Edge (and other browsers)](https://medium.com/@primozcigler/neat-trick-for-css-object-fit-fallback-on-edge-and-other-browsers-afbc53bbb2c3#.68cdxqj0j)

# Lightboxes

- [DxF5H/lightbox](https://github.com/DxF5H/lightbox)

  > Doesn't need image dimensions

- [lightgallery.js](https://github.com/sachinchoolur/lightgallery.js)
  > No dependencies, no need for image dimensions

# Image preloading

- [jasonslyvia/react-lazyload](https://github.com/jasonslyvia/react-lazyload)

- [Coloor - Image preloading utility](https://github.com/krasimir/coloor)
  > Coloor is a HTML preprocessor that decorates your <img> tags with data-coloor attributes containing a small base64 encoded version of your image. The idea is to quickly show the small image as a placeholder while the original one is loading.

## Dominant Colors for Lazy-Loading Images

- [Dominant Colors for Lazy-Loading Images](https://manu.ninja/dominant-colors-for-lazy-loading-images)
- [antimoderate](https://github.com/whackashoe/antimoderate)

## Better Portable Graphics

- [Better Portable Graphics](https://en.wikipedia.org/wiki/Better_Portable_Graphics)
  > Based on High Efficiency Video Coding (HVEC)

# Processing

- [infinitered/nsfwjs](https://github.com/infinitered/nsfwjs)

  > NSFW detection on the client-side via Tensorflow JS

- [thumbor/thumbor](https://github.com/thumbor/thumbor)

  > thumbor is an open-source photo thumbnail service
  > `http://<thumbor-server>/300x200/smart/s.glbimg.com/et/bb/f/original/2011/03/24/VN0JiwzmOw0b0lg.jpg`

- [lovell/sharp](https://github.com/lovell/sharp)

  > High performance Node.js image processing, the fastest module to resize JPEG, PNG, WebP and TIFF images. Uses the libvips library.
