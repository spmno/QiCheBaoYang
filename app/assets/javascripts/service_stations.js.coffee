# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

mapInit = ->
  mapObj = new AMap.Map("iCenter",{
    rotateEnable:true,
    dragEnable:true,
    zoomEnable:true,
    view:new AMap.View2D({
      zoom:11
    })
  })

$(document).ready(mapInit)
