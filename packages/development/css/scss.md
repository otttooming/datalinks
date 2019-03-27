# SCSS

## SCSS lint

- [scss-lint](https://github.com/brigade/scss-lint/blob/master/config/default.yml)

## Referencing selectors

On Sass 3.4:

```scss
.semantic {
  @at-root {
    ul#{&} {
      padding: 0;
      margin: 0;
    }
    p#{&} {
      margin: 0;
    }
  }
}
```

Generates:

```scss
ul.semantic {
  padding: 0;
  margin: 0;
}

p.semantic {
  margin: 0;
}
```
