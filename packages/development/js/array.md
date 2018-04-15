---
layout: page
title: Arrays
---

# Conditionals

## Array exists

```js
  if (!Array.isArray(array) || !array.length) {
    // array does not exist, is not an array, or is empty
  }
```

# Functional programming

## Conditionally add item to array

```js
  [
    true && 'one',
    false && 'two',
    1 === 1 && 'three',
    1 + 1 === 9 && 'four'
  ].filter(Boolean) // ['one', 'three']
```

# ES5

## Array contains

```js
  // ES7 will have Array.prototype.includes.
  function arrayIncludes(array, value) {
    return array.indexOf(value) !== -1;
  }

  // Convert an array-like object to a real array.
  function toArray(thing) {
    return Array.prototype.slice.call(thing);
  }
```

```js
  function arrayEquals(firstArray, array) {
      // if the other array is a falsy value, return
      if (!array)
          return false;

      // compare lengths - can save a lot of time
      if (firstArray.length != array.length)
          return false;

      for (var i = 0, l=firstArray.length; i < l; i++) {
          // Check if we have nested arrays
          if (firstArray[i] instanceof Array && array[i] instanceof Array) {
              // recurse into the nested arrays
              if (!firstArray[i].equals(array[i]))
                  return false;
          }
          else if (firstArray[i] != array[i]) {
              // Warning - two different object instances will never be equal: {x:20} != {x:20}
              return false;
          }
      }
      return true;
  }

  function arrayContains(firstArray, thing) {
      // if the other array is a falsy value, return false
      if (!firstArray)
          return false;

      //start by assuming the array doesn't contain the thing
      var result = false;
      for (var i = 0, l=firstArray.length; i < l; i++)
        {
        //if anything in the array is the thing then change our mind from before

        if (firstArray[i] instanceof Array)
          {if (firstArray[i].equals(thing))
            result = true;}
          else
            if (firstArray[i]===thing)
              result = true;


        }
       //return the decision we left in the variable, result
      return result;
  }
```

## Remove array item

* ***GitHub*** [gist](https://gist.github.com/chad3814/2924672)
  > deleting array items in javascript with forEach() and splice()
