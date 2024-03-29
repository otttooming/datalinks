# TypeScript

[gvergnaud/ts-pattern: 🎨 A complete Pattern Matching library for TypeScript, with smart type inference.](https://github.com/gvergnaud/ts-pattern)

## Compilation

### Copy static assets

Static assets are not copied over for `tsc`

[TypeScript-Node-Starter/copyStaticAssets.ts](https://github.com/Microsoft/TypeScript-Node-Starter/blob/master/copyStaticAssets.ts)

```
shell.cp("-R", "src/public/js/lib", "dist/public/js/");
shell.cp("-R", "src/public/fonts", "dist/public/");
shell.cp("-R", "src/public/images", "dist/public/");
```

## Blogs

- [mariusschulz](https://blog.mariusschulz.com/)

- [toddmotto](https://toddmotto.com/)

## Generation

- [quicktype](https://app.quicktype.io/#s=music) - Auto generate types from JSON

- [YousefED/typescript-json-schema](https://github.com/YousefED/typescript-json-schema) - Generate json-schema from your Typescript sources

## Types

- [wordpress-api](https://github.com/dderevjanik/wordpress-api/tree/master/lib/interface)

## Bugs

- [Enums can no longer be used for index signature types](https://github.com/Microsoft/TypeScript/issues/13042)

## Imports

- [Say Goodbye to ‘../../../..’ in your TypeScript Imports](https://decembersoft.com/posts/say-goodbye-to-relative-paths-in-typescript-imports/)

## Setup

- [jeffijoe/typesync](https://github.com/jeffijoe/typesync) - Install missing TypeScript typings for dependencies in your package.json.

- [Babel 7 + TypeScript](http://artsy.github.io/blog/2017/11/27/Babel-7-and-TypeScript/)

## Build and bundle process

- [duffman/tspath](https://github.com/duffman/tspath) - TypeScript path alias resolver

- {}

- [TypeStrong/dts-bundle](https://github.com/TypeStrong/dts-bundle) - Export TypeScript .d.ts files as an external module definition

- [SitePen/dts-generator](https://github.com/SitePen/dts-generator) - Generates a single .d.ts bundle containing external module declarations exported from TypeScript module files.

- [nomaed/dts-builder](https://github.com/nomaed/dts-builder) - Builds a single d.ts file library from generated d.ts sources

## Starters

- [alexjoverm/typescript-library-starter](https://github.com/alexjoverm/typescript-library-starter) - Starter kit with zero-config for building a library in TypeScript, featuring RollupJS, Jest, Prettier, TSLint, Semantic Release, and more!

## Debate

- [If you're still using jsdoc syntax like @ params etc, then you're basically using typescript without any benefits.](https://twitter.com/toddmotto/status/929413949044518913)
- [David K.](https://twitter.com/DavidKPiano/status/1052909749065408512)

```
Me: I think I'm done
JavaScript: Looks good to me
Me: Hope it works
JS: I believe in you
Me: ...
JS: undefined is not a function

Me: I thi--
TypeScript: Nope
Me: What abou--
TS: Wrong
Me: ...
TS: cannot invoke an expression whose type lacks a call signature
```

### Boilerplate

- Need to use JSDoc if no TS results in parity for boilerplate?

### Skip

[Skip - A programming language to skip the things you have already computed](http://skiplang.com/)

- [skip programming language](https://twitter.com/Vjeux/status/1044987130533961728) - [We just open sourced Skip, a general-purpose programming language that tracks side effects to provide caching with reactive invalidation, ergonomic and safe parallelism, and efficient garbage collection](https://twitter.com/Vjeux/status/1044987130533961728) - What are its irredeemable qualities in Facebook's eyes? - I'm surprised that Flowtype meets those standards considering Typescript exists. - At the time flow was started, typescript was in a very different state as it was unusably slow for even medium sized projects and didn’t support nullabity and other basic type features. It got much better over time but now it’s tricky to migrate

### Migrations

- [Porting 30K lines of code from Flow to TypeScript](https://news.ycombinator.com/item?id=18906405)

- [Yarn's Future – v2 and beyond](https://news.ycombinator.com/item?id=18989207) - Yarn and Jest are being rewritten to TypeScript from Flow

### Generate documentation

- [phenomnomnominal/tsquery](https://github.com/phenomnomnominal/tsquery) - TypeScript AST query library

- [YousefED/typescript-json-schema](https://github.com/YousefED/typescript-json-schema)

- [dsherret/ts-morph: TypeScript Compiler API wrapper for static analysis and programmatic code changes.](https://github.com/dsherret/ts-morph)

- [vega/ts-json-schema-generator: Generate JSON schema from your Typescript sources](https://github.com/vega/ts-json-schema-generator)

- [wessberg/ts-evaluator: An interpreter for Typescript that can evaluate an arbitrary Node within a Typescript AST](https://github.com/wessberg/ts-evaluator)

### TypeDoc

- [Typedoc does not play well with alias type arguments](https://github.com/TypeStrong/typedoc/issues/729)

## Tools

- [RIP21/ts-get](https://github.com/RIP21/ts-get) - Alternative to lodash.get that makes it typed and cool as if optional typing proposal is there

- [sindresorhus/type-fest](https://github.com/sindresorhus/type-fest) - A collection of essential TypeScript types. E.g. `Omit` etc.
