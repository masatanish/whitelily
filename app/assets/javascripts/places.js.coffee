# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  if $( "#place_address" ).size() > 0
    addresspickerMap = $( "#place_address" ).addresspicker({
      mapOptions: {
        zoom: 15, 
        center: new google.maps.LatLng(35.6614652, 139.66774), 
        scrollwheel: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      },
      elements: {
        map:      "#map",
        lat:      "#place_latitude",
        lng:      "#place_longitude",
        locality: '#locality',
        country:  '#country',
        type:    '#type' 
      }
    })
    gmarker = addresspickerMap.addresspicker( "marker")
    gmarker.setVisible(true)
    addresspickerMap.addresspicker( "updatePosition")

