---
layout: page
title: VOOG elements
---

### Search over elements

* ***Edicy.com*** [Search over elements](http://www.edicy.com/developer/code-examples/template-coding-examples/search-over-elements)

### Change element field value with JS

```
    stepan Kui on elemendi leht ja on {% editable element.field %} siis kuidas ma javascriptiga saan sinna väärtust panna? Praegu ma panin .edy-editable innerHTMLiks lihtsalt, aga see nähtavasti ei lähe “päris contentiks” ja kui fookuse anda, siis see sisu kaob
    [00:17]
    oleks vaja programmatiliselt panna sinna sisu pls
    [08:32]
    lauri mis see .field teeb üldse ?
    new messages
    [08:48]
    kaspar.naaber Siin oli see trikk, et sa pead enne innerHTML-i lisamist JS-iga fookuse sinna määrama, siis sisu sisestama ja siis blurrima
    [08:48]
    Alles komistasin sama asja otsa.
```

### Product sorting using AJAX

```js
    var recipesList = [];
    var recipeIndex = 0;

    function loadCategoryRecipes(currentPage) {
        $('#loader').show();
        var recipesModelId = 531;

        $.when($.ajax({
            url: '/admin/api/site/elements.json?element_definition_id=' + recipesModelId + '&per_page=100&page=' + currentPage + '&page_id=' + pageID,
            dataType: 'json',
            success: function(elements) {
                $(elements).each(function(index, recipe) {
                    recipesList.push({
                        title: recipe.title,
                        url: recipe.url,
                        image: recipe.values.image,
                        id: recipe.id
                    });
                });
            }
        }))
        .then(function(elements) {
            // Get elements from next page
            if (elements != '') {
                loadCategoryRecipes(currentPage + 1);
            } else {
                reverseRecipes(recipesList);
            }
        });
    };

    function reverseRecipes(recipesList) {
        recipesList = recipesList.reverse();
        displayRecipes(recipesList);
    };

    function displayRecipes(recipesList) {
        $('#loader').hide();
        var imageHolderId;
        $(recipesList).each(function(index, recipe) {
            lastClass = ++recipeIndex % 3 == 0 ? 'last' : '';
            imageHolderId = 'recipe-' + recipe.id;
            $('.recipes-listing ul').append('<li class="'+ lastClass +'"><a href="'+ recipe.url +'"><span class="image-holder" id="' + imageHolderId + '">'+ recipe.image +'</span>' + recipe.title + '</a></li>');
            centerImage(imageHolderId);
        });
    }


    function centerImage(imageHolderId) {
        var image = $('#' + imageHolderId).find('img');

        image.load(function() {
            fadeInImage(image);
        });
    };


    function centerRecipeImages() {
        var imageWidth,
            imageHeight,
            portraitImage;

        $('#loader').hide();

        $('.image-holder').each(function() {
            var $this = $(this);
                $img = $this.find('img');

            if ($img.prop('complete')) {
                fadeInImage($img);
            } else {
                $img.load(function() {
                    fadeInImage($(this));
                });
            }
        });
    };

    function fadeInImage(img) {
        var $img = img;

        $img.css({
            'width': 'auto',
            'height': 'auto',
            'display': 'none'
        });

        imageWidth = $img.width();
        imageHeight = $img.height();
        portraitImage = (1 >= imageWidth / imageHeight);

        if (page == 'recipes') {
            var squareDimensions = 201;
        } else if (page == 'products') {
            var squareDimensions = 98;
        } else {
            var squareDimensions = 213;
        }

        if (portraitImage) {
            $img.css({
                'width': squareDimensions + 'px',
                'top': (squareDimensions / 2) - ((imageHeight * (squareDimensions / imageWidth)) / 2) + 'px'
            }).hide().fadeIn('slow');
        } else {
            $img.css({
                'height': squareDimensions + 'px',
                'left': (squareDimensions / 2) - ((imageWidth * (squareDimensions / imageHeight)) / 2) + 'px'
            }).hide().fadeIn('slow');
        }
    };


    var request = null;

    // Load recipes
    function loadRecipes(currentPage) {
        var recipesModelId = 531;

        request = $.ajax({
            url: '/admin/api/site/elements.json?element_definition_id=' + recipesModelId + '&per_page=100&page=' + currentPage,
            dataType: 'json',
            success: function(elements) {
                showFilteredRecipes(elements, currentPage);
            }
        });

        $.when(request).then(function(elements) {
            // Get elements from next page
            if (elements != '') {
                loadRecipes(currentPage + 1);
            } else {
                var noResultsText = '';

                if (pageLanguage == 'et') {
                    noResultsText = 'Otsingule vastavaid retsepte ei leitud.';
                } else if (pageLanguage == 'ru') {
                    noResultsText = 'Рецепты вы ищете не найдены';
                }

                if (indexCounter == 0) {
                    $('.content .recipes-listing').html(noResultsText);
                    $('#loader').hide();
                }
            }
        });
    }

    function getUrlParamValue(param) {
        var url = window.location.href,
            urlParts = url.split('?'),
            params = urlParts[1].split('&'),
            value = '',
            decodedValue = '';

        $(params).each(function(i) {
            if (params[i].indexOf(param) >= 0) {
                value = params[i].split('=')[1];
                decodedValue = decodeURIComponent((value).replace(/\+/g, ' '));
            }
        });

        return decodedValue;
    }

    function changeSelectedValue(param) {
        $('select[name=' + param + ']').val(getUrlParamValue(param)).trigger('change');
    }

    function showFilteredRecipes(elements, currentPage) {
        var filteredRecipes = filterRecipes(elements),
            html = '',
            lastClass = '',
            imageHolderId;

        $(filteredRecipes).each(function(index, recipe) {
            lastClass = ++indexCounter % 3 == 0 ? 'last' : '';
            imageHolderId = 'recipe-' + recipe.id;
            html = '<li class="' + lastClass + '"><a href="'+ recipe.url +'"><span class="image-holder" id="'+ imageHolderId +'">'+ recipe.values.image +'</span>'+ recipe.title +'</a></li>';
            $('.content .recipes-listing .three-col-list').append(html);
            centerImage(imageHolderId);
        });

        if (filteredRecipes.length > 0) {
            $('#loader').hide();
        }
    }


    function filterRecipes(elements) {
        var selectedOption = {
                ingredient: getUrlParamValue('ingredient'),
                function: getUrlParamValue('function')
            },
            decodedIngredient = selectedOption.ingredient.replace(/\+/g, ' '),
            decodedFunction = selectedOption.function.replace(/\+/g, ' '),
            selectedRegexp = {
                ingredient: '^' + selectedOption.ingredient + '| // ' + selectedOption.ingredient,
                function: '^' + selectedOption.function + '| // ' + selectedOption.function
            },
            condition = '',
            recipes = [];

        if (selectedOption.ingredient != '') {
            condition += 'i';
        }

        if (selectedOption.function != '') {
            condition += 'f';
        }

        switch (condition) {
            case 'if':
            $(elements).each(function(index, recipe) {
                if (typeof recipe.values.filter_ingredients === 'undefined' && typeof recipe.values.filter_function === 'undefined') {
                    } else {
                        if (recipe.values.filter_ingredients.match(selectedRegexp.ingredient)
                            && recipe.values.filter_function.match(selectedRegexp.function)) {
                            recipes.push(recipe);
                        }
                    }
                });
            break;

            case 'i':
                $(elements).each(function(index, recipe) {
                    if (typeof recipe.values.filter_ingredients === 'undefined') {
                    } else {
                        if (recipe.values.filter_ingredients.match(selectedRegexp.ingredient)) {
                            recipes.push(recipe);
                        }
                    }
                });
            break;

            case 'f':
                $(elements).each(function(index, recipe) {
                    if (typeof recipe.values.filter_function === 'undefined') {
                    } else {
                        if (recipe.values.filter_function.match(selectedRegexp.function)) {
                            recipes.push(recipe);
                        }
                    }
                });
            break;

            default:
                $(elements).each(function(index, recipe) {
                    recipes.push(recipe);
                });
            break;
        }
        return recipes;
    }

    // Filter selection is changed
    $('select').change(function() {
        var selectedOption = $(this).find('option:selected').val(),
            selectedDropdown = $(this).prev('.dropdown-content').find('.dropdown-inner');

        // Write selected value to dropdown
        if (selectedOption == '') {
            if ($(this).attr('id') == 'ingredient') {
                selectedDropdown.html(ingredientTranslation);
            } else if ($(this).attr('id') == 'function') {
                selectedDropdown.html(functionTranslation);
            }
        } else {
            selectedDropdown.html(selectedOption);
        }
    });


    // Clear selected options on refresh
    $(window).bind('beforeunload', function() {
        $('select').find('option:selected').attr('selected', false);
    });

    // Show mobile mainmenu
    $('.mainmenu-opener').click(function() {
        $('.header .mainmenu, .mainmenu-opener').toggleClass('open');
    });

    // Show mobile sidebar
    $('.sidebar-menu-opener').click(function() {
        $('.sidebar ul, .sidebar-menu-opener').toggleClass('open');
    });


    // Show mobile filter
    $('.filter-opener').click(function() {
        $('.filter.mobile-filter').toggleClass('open');
    });


    // Detect flash support
    function detectFlash() {
        if (FlashDetect.installed) {
            $('.flashcontent').show();
        } else {
            $('.nonflashcontent').show();
        }
    };


    // Calculate GDA values
    function calculateGdaValues() {
        var weight = jQuery('#product-weight').html() || '0';
        var portion_count = jQuery('#product-portion_count').html() || '0';
        var energy = jQuery('#product-energy').html() || '0';
        var product_protein = jQuery('#product-protein').html() || '0';
        var product_fat = jQuery('#product-fat').html() || '0';
        var product_carbon = jQuery('#product-carbon').html() || '0';

        var unit = null;
        var smallunit = null;
        var massive = false;
        var portion_weight = 0;
        var coef = 0;

        weight = weight.replace(',','.');
        weight = weight.replace(/\s/g,'');
        weight = weight.replace(/~/g,'');

        unit = weight.replace(parseFloat(weight),'');
        unit = unit.replace(/\.0/,'');
        if (unit == '') { unit = 'g'; }

        weight = parseFloat(weight);

        if (unit.toLowerCase() == 'kg' || unit.toLowerCase() == 'l') { massive = true; }
        if (massive) { weight *=1000; }

        if (unit.toLowerCase() == 'kg' || unit.toLowerCase() == 'g') {
            smallunit = 'g';
        } else if (unit.toLowerCase() == 'ml' || unit.toLowerCase() == 'l') {
            smallunit = 'ml';
        }

        portion_count = (portion_count == '') ? '0' : portion_count;
        portion_count = portion_count.match(/[^ (]+/)[0];
        portion_count = portion_count.replace(/~/g,'');
        portion_count = parseFloat(portion_count.replace(',','.'));

        if (portion_count == 0) {
        portion_weight = 0;
        } else {
        portion_weight = weight/portion_count;
        }

        coef = portion_weight/100;

        energy = (energy == '') ? '0' : energy;

        if ( /\//.test(energy)) {
            energy = (energy.match(/\/(.*?)$/)) ? energy.match(/\/(.*?)$/)[1] : '0';
        }
        energy = energy.replace(/~/g,'');
        energy = parseFloat(energy.replace(',','.'));

        product_protein = product_protein.replace(',','.');
        product_protein = product_protein.replace(/\s/g,'');
        product_protein = product_protein.replace(/~/g,'');
        product_protein = parseFloat(product_protein);

        product_fat = product_fat.replace(',','.');
        product_fat = product_fat.replace(/\s/g,'');
        product_fat = product_fat.replace(/~/g,'');
        product_fat = parseFloat(product_fat);

        product_carbon = product_carbon.replace(',','.');
        product_carbon = product_carbon.replace(/\s/g,'');
        product_carbon = product_carbon.replace(/~/g,'');
        product_carbon = parseFloat(product_carbon);

        var portion_energy = Math.round(energy*coef);
        var portion_protein = Math.round(product_protein*coef);
        var portion_carbon = Math.round(product_carbon*coef);
        var portion_fat = Math.round(product_fat*coef);

        // Set gda values
        jQuery('#gda-energy').html(portion_energy);
        jQuery('#gda-protein').html(portion_protein+smallunit);
        jQuery('#gda-carbon').html(portion_carbon+smallunit);
        jQuery('#gda-fat').html(portion_fat+smallunit);

        jQuery('#gda-energy_cent').html(Math.round(portion_energy/2000*100) + '%');
        jQuery('#gda-protein_cent').html(Math.round(portion_protein/50*100) + '%');
        jQuery('#gda-carbon_cent').html(Math.round(portion_carbon/270*100) +'%');
        jQuery('#gda-fat_cent').html(Math.round(portion_fat/70*100) + '%');
    };
```
