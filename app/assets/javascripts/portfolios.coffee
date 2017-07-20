# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = undefined

ready = ->
  $('.sortable').sortable()
  return

# Ready (1) - when the page loads, pass the variable
# Ready (2) - variable
$(document).ready ready