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

  # 
  # movementStrength = 50
  # height = movementStrength / $(window).height()
  # width = movementStrength / $(window).width()
  # $('#three').mousemove (e) ->
  #   pageX = e.pageX - ($(window).width() / 2)
  #   pageY = e.pageY - ($(window).height() / 2)
  #   newvalueX = width * pageX * -1 - 25
  #   newvalueY = height * pageY * -1 - 50
  #   $('#three').css 'background-position', newvalueX + 'px     ' + newvalueY + 'px'
  #   return
  # return


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
