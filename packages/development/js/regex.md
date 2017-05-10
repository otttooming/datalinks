---
layout: page
title: Regular expressions
---

* ***GitHub*** [RE-Build: Building regular expressions with natural language](https://github.com/MaxArt2501/re-build)
* ***GitHub*** [JSVerbalExpressions](https://github.com/VerbalExpressions/JSVerbalExpressions)
* [regexhub](https://projects.lukehaas.me/regexhub/)
  > Useful Regex Patterns

# Snippets

## Find and remove vendor prefixes in your CSS using Regex
[Link](https://www.mikestreety.co.uk/blog/find-and-remove-vendor-prefixes-in-your-css-using-regex)

```js
  \-(moz|o|webkit|ms|khtml)\-(?!font-smoothing|osx|print|backface).+?;
```

* Remove with empty line

```js
  \n.*?-(moz|o|webkit|ms|khtml)\-(?!font-smoothing|osx|print|backface).+?;
```