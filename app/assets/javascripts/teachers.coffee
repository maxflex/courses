$(document).ready ->
  # $('.tutor-info:first .info-line').each (index, el) ->
  #   $(el).addClass if index & 1 then 'fadeInRight' else 'fadeInLeft'
  showAnimation = (selector) ->
    selector.find('.info-line').each (index, el) ->
      $(el).addClass(if index & 1 then 'fadeInRight' else 'fadeInLeft').one animation_done, ->
        showAnimation selector.next()

  $('#three').waypoint (direction) ->
    showAnimation $('.tutor-info:first')
  ,
    offset: '10%'


  # animation_index = 0
  # animations = ['fadeInLeft', 'fadeInRight', 'fadeInUp', 'fadeInUp']
  #
  # $('#three').waypoint (direction) ->
  #   showDiv $('.info-line').eq animation_index
  #
  # showDiv = (div) ->
  #   $(div).addClass(animations[animation_index]).one animation_done, ->
  #     #call back
  #     animation_index++
  #     showDiv $('.info-line').eq animation_index
  #     return
  #   return
