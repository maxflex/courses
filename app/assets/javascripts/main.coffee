# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@animation_done = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

$(document).ready ->
  new Vue
    el: 'body'
    data:
      current_tab: 1
      overlay: false
    methods:
      start_amimation: ->
        $('#line-1').addClass('animated fadeIn').one animation_done, ->
          $('#line-2').addClass('animated fadeIn').one animation_done, ->
            $('.tabs').addClass('animated fadeInDown')
            $('.scroll_down').addClass('animated fadeInUp').one animation_done, ->
              $('body').css('overflow-y', 'auto')
    ready: ->
      # this.start_amimation()
