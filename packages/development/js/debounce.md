# Debounce

## animationframes

- [animationframes](https://github.com/pakastin/animationframes) - Minimalistic way to create JS animations!

- [Short guide for setting FPS: requestAnimationFrame](http://creativejs.com/resources/requestanimationframe/)

```js
var fps = 15;
function draw() {
  setTimeout(function() {
    requestAnimationFrame(draw);
    // Drawing code goes here
  }, 1000 / fps);
}
draw();
```
