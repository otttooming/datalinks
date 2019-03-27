# Internet Explorer

## Select dropdown

### Pseudo-element for the dropdown arrow on IE

- [Select removing dropdown arrow](http://stackoverflow.com/questions/16603979/select-removing-dropdown-arrow)

```css
select::-ms-expand {
  display: none;
}
```

## Hide IE scrollbars

- [-ms-overflow-style property](<https://msdn.microsoft.com/en-us/library/hh771902(v=vs.85).aspx>)

```css
body {
  -ms-overflow-style: -ms-autohiding-scrollbar;
}
```
