$(document).on "ready turbolinks:load", ->
  $('#comment-button').on 'click', ->
    $("#comment-modal").addClass("is-active");
  $('#comment-close-button').on 'click', ->
    $("#comment-modal").removeClass("is-active");
