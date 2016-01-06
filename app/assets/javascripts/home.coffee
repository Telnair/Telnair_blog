# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



menuFunc = ->
  $(".forum-link > a").on 'click', (event) ->
    event.preventDefault()
    unless $("header nav").hasClass("nav-open")
      $("header nav").addClass("nav-open")
    else
      $("header nav").removeClass("nav-open")
  $("header nav a").on 'click', ->
    $("header nav").removeClass("nav-open")


$(document).on 'ready page:load', ->
  menuFunc()
