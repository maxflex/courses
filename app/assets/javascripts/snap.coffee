$(document).ready ->
  # info_1 = s.circle 150, 150, 100
  # info_1.drag()
  s = Snap '#info-1'
  ruby_icon = $(".ruby-icon")
  image_offset = 66.5
  animation_speed = 1000

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
      bubble.css 'left', $("path").first().position().left - 75
      bubble.addClass 'animated fadeInLeft'

  drawLine2 = ->
    x = ruby_icon.position().left + ruby_icon.width() - image_offset
    y = ruby_icon.position().top + (ruby_icon.height() / 2)

    line = s.path
      path: "M#{x},#{y}"
      stroke: '#EB5745'
      # strokeDasharray: "10 10"
      strokeWidth: 4

    line.animate {d: "M#{x},#{y}L#{x + 400},#{y}"}, animation_speed

  drawLine3 = ->
    x = ruby_icon.position().left + (ruby_icon.width() / 2)
    y = ruby_icon.position().top + ruby_icon.height() - image_offset

    line = s.path
      path: "M#{x},#{y}"
      stroke: '#EB5745'
      # strokeDasharray: "10 10"
      strokeWidth: 4

    line.animate {d: "M#{x},#{y}L#{x},#{y+100}"}, animation_speed

  setTimeout ->
    drawLine1()

    setTimeout ->
      drawLine2()
    , animation_speed / 2

    setTimeout ->
      drawLine3()
    , animation_speed / 4
  , 5000
