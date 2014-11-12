# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

loadServiceStation = (mapObj) ->
  $.getJSON('/service_stations.json', (data) ->
    $.each(data, (index, content) ->
      if content.location
        beforeSign = content.location.indexOf('(')
        afterSign = content.location.indexOf(')')
        pointContent = content.location.substring(beforeSign+1, afterSign)
        locationArray = pointContent.split(' ')
        longitude = locationArray[0]
        latitude = locationArray[1]
        marker = new AMap.Marker({
          icon:"http://webapi.amap.com/images/marker_sprite.png",
          position:new AMap.LngLat(longitude,latitude)
          })
        marker.setMap(mapObj)
    )
    mapObj.setFitView()
  )

mapInit = ->
  contextMenuPositon = {}
  mapObj = new AMap.Map("iCenter",{
    rotateEnable:true,
    dragEnable:true,
    zoomEnable:true,
    view:new AMap.View2D({
      center:new AMap.LngLat(123.434286,41.804654),
      zoom:11
    })
  })
  mapObj.plugin(["AMap.ToolBar"], () ->
    toolBar = new Amap.ToolBar()
    mapObj.addControl(toolBar)
  )
  contextMenu = new AMap.ContextMenu()
  contextMenu.addItem("获取Location", (e)->
    alert contextMenuPositon
  )
  contextMenu.addItem("放大一级", ()->
    mapObj.zoomIn()
  )
  contextMenu.addItem("缩小一级", ()->
    mapObj.zoomOut()
  )
  AMap.event.addListener(mapObj, 'rightclick', (e)->
    contextMenu.open(mapObj,e.lnglat)
    contextMenuPositon = e.lnglat
  )
  loadServiceStation(mapObj)

$(document).ready(mapInit)
