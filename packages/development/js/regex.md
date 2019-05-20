# Regular expressions

- [RE-Build: Building regular expressions with natural language](https://github.com/MaxArt2501/re-build)
- [JSVerbalExpressions](https://github.com/VerbalExpressions/JSVerbalExpressions)
- [regexhub](https://projects.lukehaas.me/regexhub/) - Useful Regex Patterns
- [RegexHQ](https://github.com/regexhq) - Collaboration on world-wide community-driven collections of RegExp patterns and tools that can make our life easier.

## Snippets

### Find and remove vendor prefixes in your CSS using Regex

[Link](https://www.mikestreety.co.uk/blog/find-and-remove-vendor-prefixes-in-your-css-using-regex)

```js
  \-(moz|o|webkit|ms|khtml)\-(?!font-smoothing|osx|print|backface).+?;
```

- Remove with empty line

```js
  \n.*?-(moz|o|webkit|ms|khtml)\-(?!font-smoothing|osx|print|backface).+?;
```

## Validators

```js
const INTEGER_REGEXP = /^\d*$/;
const DECIMAL_REGEXP = /^(\s*|\d+\.?\d*)$/;
```
