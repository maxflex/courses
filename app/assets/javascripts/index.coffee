# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module "Rails", []
  .controller "MainCtrl", ($scope) ->
    $scope.tab_current = 1

$(document).ready ->
  animation_done = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

  $('#line-1').addClass('animated fadeIn').one animation_done, ->
    $('#line-2').addClass('animated fadeIn').one animation_done, ->
      $('.scroll_down').addClass('animated fadeInUp')
      $('.tabs').addClass('animated fadeInDown')
