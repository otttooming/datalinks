---
layout: page
title: Tables
---

## Responsive tables

Kirjutasin alternatiiviks välja järgmise scripti, mis lõikab tabelid veergude kaupa eraldi tabeliteks, väiksematel kui 768px ekraanidel.

JS aktiveerub ainult konditsionaali täitumise korral ja seega ei näe tulemust funktsionaalselt akordioni mängimises veebilehitseja aknaga. Taaslaadides akna, on kõik vastava ekraani jaoks kohandatud.

<script src="{{ javascripts_path }}/table.responsive.js"></script>

table.responsive.js ->

```js
if ($(window).width() < 768) {
  function split($table, chunkSize) {
    var cols = $($table).find("tr:first td").length - 1;
    var n = cols / chunkSize;

    for (var i = 0; i <= n; i++) {
      $("<br>").appendTo($table);
      var $newTable = $table.clone().insertBefore($table);
      for (var j = cols + 1; j > 1; j--) {
        if (j + chunkSize - 1 <= chunkSize * i || j > chunkSize * i + 1) {
          $('td:nth-child(' + j + ')', $newTable).remove();

        }

      }

      $('td', $newTable).each(function() {
        $this = $(this);

        if ($this.is(':first-child') && $this.is(':last-child')) {
          $this.addClass('first last');
        } else {

          if ($this.is(':first-child')) {
            $this.remove();
          }

          if ($this.is(':last-child')) {
            $this.addClass('last');
          }
        }

      });
    }
  }



  $('table').each(function() {
    $(this).removeAttr("style");
    split($(this), 1);
    this.remove();
  });

};
```

## Reinit Google Maps

```js
    $( 'iframe' ).attr( 'src', function ( i, val ) { return val; });
```

See väldib Safari (mac, ios) versioonides nähtust, kus mobiilseks vaateks ümberehitatud tabel ei initsialiseeri Google maps iframe korralikult, vaid ainult osaliselt. Muudel veebilehitsejatel seda viga ei eksisteerinud ( Chrome, FF, IE ).
Antud osa koodi loob taasinitsialiseerib iframe'i peale ümberehitatud tabeli moodustumist.
