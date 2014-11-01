# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $.get('/user_record/update_auto_models.js?auto_brand_id=' + $('#user_record_auto_brand_id').val())
  $('#user_record_auto_brand_id').change ->
    $.get('/user_record/update_auto_models.js?auto_brand_id=' + $('#user_record_auto_brand_id').val())
  $('.datepicker').datepicker()

$(document).ready(ready)
