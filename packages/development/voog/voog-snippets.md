# Snippets

Log out users when they have entered site through private link.

```html
  {% if page.private? %}
    <div class="wrap">
      <a class="btn__logout" href="/admin/site/sessions/logout">{% if page.language_code == "et" %}Välju leheküljelt{% else %}Logout{% endif %}</a>
    </div>
  {% endif %}
```

```css
.btn__logout {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
  position: relative;
  padding: 5px 7px;
  margin: 0;
  font-family: 'Avenir Next', 'AvenirX', 'Helvetica Neue', Helvetica, Roboto,
    Arial, sans-serif;
  font-size: 16px;
  line-height: 16px;
  color: white;
  text-align: center;
  text-shadow: none;
  background: none;
  border: 0;
  outline: none;
  display: inline-block;
  text-decoration: none;
  vertical-align: baseline;
  cursor: pointer;
  padding: 9px 14px;
  font-size: 18px;
  font-weight: 400;
  line-height: 17px;
  background-color: #22b02e;
  color: white !important;
}
```
