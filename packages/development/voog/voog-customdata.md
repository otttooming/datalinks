---
layout: page
title: VOOG customData
---

```js
  // return request to update given item
  var updateGalleryItem = function (id, data) {
    return $.ajax({
      type: "PUT",
      url: "/admin/api/elements/" + id,
      dataType: "json",
      data: {
        element: data
      }
    });
  };

  // return request to create new item
  var addGalleryItem = function (data) {
    return $.ajax({
      type: "POST",
      url: "/admin/api/elements",
      dataType: "json",
      data: {
        element: data
      }
    });
  };

  // return request to delete given item
  var deleteGalleryItem = function (id) {
    return $.ajax({
      type: "DELETE",
      url: "/admin/api/elements/" + id,
      dataType: "json"
    });
  };


  // random exp
  pageData.set({
      "header_bg": { combinedLightness: "1" }
    },
    {
      success: function(data) {}
    }
  );
  pageData.set({
      "header_bg": { "cccc": {dadas: 123} }
    },
    {
      success: function(data) {}
    }
  );
  pageData.set({
      "header_bg": { combinedLightness: 1 }
    },
    {
      success: function(data) {}
    }
  );

  //techchill
  <script type="text/javascript">
    $('.toggle-control').click(function() {
      $(this).siblings('.delete-element').addClass('open');
    });
    $('.delete-element').click(function() {
      deleteAgendaItem({{ element.id }});
      window.location.replace(".");
    })

    // return request to delete given item
    var deleteAgendaItem = function (id) {
      return $.ajax({
        type: "DELETE",
        url: "/admin/api/elements/" + id,
        dataType: "json"
      });
    };
  </script>
```
