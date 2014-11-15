# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $.get('/service_item/update_auto_models.js?auto_brand_id=' + $('#service_item_auto_brand_id').val())
  $('#service_item_auto_model_id').change ->
    $.get('/service_item/update_auto_models.js?auto_brand_id=' + $('#service_item_auto_model_id').val())

$(document).ready(ready)