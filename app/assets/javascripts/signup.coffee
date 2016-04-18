$(document).ready ->
  # $('#request-phone').mask("+7 (999) 999-99-99")
  $('#request-phone').inputmask
    mask: '+7 (999) 999-99-99'
    autoUnmask: true
    showMaskOnHover: false


  $('input')
    .on 'focus', ->
      $(@).parent().addClass 'input--filled'
    .on 'blur', ->
      if $(@).val() is ''
        $(@).parent().removeClass 'input--filled'


  movementStrength = 50
  height = movementStrength / $(window).height()
  width = movementStrength / $(window).width()
  $('#five, #four').mousemove (e) ->
    pageX = e.pageX - ($(window).width() / 2)
    pageY = e.pageY - ($(window).height() / 2)
    newvalueX = width * pageX * -1 - 25
    newvalueY = height * pageY * -1 - 50
    $('#five').css 'background-position', newvalueX + 'px     ' + newvalueY + 'px'
    return
  return
