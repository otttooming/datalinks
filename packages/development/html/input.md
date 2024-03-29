# Input field

- [algolia/places](https://github.com/algolia/places) - Turn any <input> into an address autocomplete

- [nosir/cleave.js](https://github.com/nosir/cleave.js) - Format input text content when you are typing...

- [istarkov/rifm](https://github.com/istarkov/rifm) - React Input Format & Mask, tiny (≈800b) component to transform any input component into formatted or masked input. Supports number, date, phone, currency, credit card, etc

## Autosize input field with hidden element

Specific implementations use out of viewport or hidden element to calculate _input_ field length.

- [jQuery.Autosize.Input](https://github.com/MartinF/jQuery.Autosize.Input) - A jQuery plugin which automatically resizes the width of input fields according to the content, while typing.

- [React-Input-Autosize](https://github.com/JedWatson/react-input-autosize) - Auto-resizing input field for React

- [autosize-input.js](https://github.com/yuanqing/autosize-input) - Effortless, dynamic-width text boxes in vanilla JavaScript.

## Autosize input field with _contenteditable_ element

## Placeholder for _contenteditable_ element

```html
<span class="badge">
  <span
    contenteditable="true"
    id="new-tag"
    class="badge alert-info"
    data-placeholder="Make a new tag"
    data-focused-advice="Start typing"
  ></span
  ><i class="fa fa-lg fa-plus-circle"></i>
</span>
```

```css
span.badge[contenteditable] {
  display: inline-block;
}
span.badge[contenteditable]:empty::before {
  content: attr(data-placeholder);
  display: inline-block;
}
span.badge[contenteditable]:empty:focus::before {
  content: attr(data-focused-advice);
}
```

## Input type="number" numpads

- [I Wanted to Type a Number](https://www.filamentgroup.com/lab/type-number.html)

## Trigger event for select option chage

```js
$0.options[1].selected = true;
$0.dispatchEvent(new Event('change'));
```

## Upload

- [23/resumable.js](https://github.com/23/resumable.js) A JavaScript library for providing multiple simultaneous, stable, fault-tolerant and resumable/restartable uploads via the HTML5 File API.
