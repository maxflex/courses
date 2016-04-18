$(document).ready ->
  initWaypoints()
  new Vue
    el: '#two'
    data:
      bubbles: {}
    methods:
      bubble: (number, value = true) ->
        Vue.set this.bubbles, number, value





#
# INIT WAYPOINTS & ANIMATIONS
#
initWaypoints = ->
  $('#two').waypoint (direction) ->
    runAllAnimations()
  ,
    offset: '20%'

#
# LINE ANIMATIONS
#
runAllAnimations = ->
  s = Snap '#info-1'
  ruby_icon = $(".ruby-icon")
  image_offset = 66.5
  animation_speed = 750

  drawLine1 = ->
    x = ruby_icon.position().left + image_offset
    y = ruby_icon.position().top + (ruby_icon.height() / 2)

    line = s.path
      path: "M#{x},#{y}"
      stroke: '#EB5745'
      # strokeDasharray: "10 10"
      strokeWidth: 4

    bubble = $('.bubble.one')
    line.animate {d: "M#{x},#{y}L#{x - 400},#{y}"}, animation_speed, ->
      # bubble.css 'left', $("path").first().position().left - 75
      bubble.addClass 'animated fadeInLeft'

  drawLine2 = ->
    x = ruby_icon.position().left + ruby_icon.width() - image_offset
    y = ruby_icon.position().top + (ruby_icon.height() / 2)

    line = s.path
      path: "M#{x},#{y}"
      stroke: '#EB5745'
      # strokeDasharray: "10 10"
      strokeWidth: 4

    bubble = $('.bubble.two')
    line.animate {d: "M#{x},#{y}L#{x + 400},#{y}"}, animation_speed, ->
      # bubble.css 'left', $("path").first().position().right - 75
      bubble.addClass 'animated fadeInRight'

  drawLine3 = ->
    x = ruby_icon.position().left + (ruby_icon.width() / 2)
    y = ruby_icon.position().top + ruby_icon.height() - image_offset

    line = s.path
      path: "M#{x},#{y}"
      stroke: '#EB5745'
      # strokeDasharray: "10 10"
      strokeWidth: 4

    bubble = $('.bubble.three')
    line.animate {d: "M#{x},#{y}L#{x},#{y+ 100 + (bubble.offset().top / 25)}"}, animation_speed, ->
      # bubble.css 'left', $("path").eq(1).position().right - 75
      bubble.addClass 'animated fadeInUp'
      showOtherBubbles()

  # show bubble 4 and 5
  showOtherBubbles = ->
    setTimeout ->
      $('.four').addClass 'bounceIn'
      $('.five').addClass 'bounceIn'
    , animation_speed / 2

  # Start running all animations
  drawLine1()

  setTimeout ->
    drawLine2()
  , animation_speed / 2

  setTimeout ->
    drawLine3()
  , animation_speed / 4
