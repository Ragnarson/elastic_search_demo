$ ->
  $(".js-autocomplete").keyup _.debounce(buildResults, 500)

buildResults = ->
  $.get "/autocomplete", { query: $(@).val() }
