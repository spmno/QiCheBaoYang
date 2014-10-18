# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = () ->
  mapInit()

mapInit = () ->
  mapObj = new AMap.Map("iCenter",{
    rotateEnable:true,
    dragEnable:true,
    zoomEnable:true,
    view:new AMap.View2D({
      center:new AMap.LngLat(121.498586,31.239637), zoom:15
    })
  })
