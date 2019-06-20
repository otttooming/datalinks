# Array

## Functional programming

### Conditionally add item to array

```js
[
  true && 'one',
  false && 'two',
  1 === 1 && 'three',
  1 + 1 === 9 && 'four',
].filter(Boolean); // ['one', 'three']
```
