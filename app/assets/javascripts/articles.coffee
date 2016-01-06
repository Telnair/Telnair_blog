# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


articleGrow = ->
  $(".article").each((i) ->
    setTimeout( ->
      $(".article").eq(i).addClass 'grow'
    50 * i
    )
  )

$(document).ready ->
  articleGrow()

$(document).on 'ready page:load', ->
  articleGrow()  
