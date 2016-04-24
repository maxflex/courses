# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@animation_done = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'

$(document).ready ->
  # $("#fakeLoader").fakeLoader
  #   spinner:"spinner4",
  #   bgColor:"#981a21",

  $.ajaxSetup
    headers:
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')

  Vue.filter 'price', (value) ->
    return value / 1000 + ',000'

  new Vue
    el: 'body'
    data:
      current_tab: 1
      overlay: false
      selected_plan: false
      request: {}
      request_sent: false
    props: ['plans', 'assets']
    methods:
      start_amimation: ->
        $('#line-1').addClass('animated fadeIn').one animation_done, ->
          $('#line-2').addClass('animated fadeIn').one animation_done, ->
            $('#line-3').addClass('animated fadeIn')
            $('.tabs').addClass('animated fadeInDown')
            $('.scroll_down').addClass('animated fadeInUp').one animation_done, ->
              $('body').css('overflow-y', 'auto')
      select_plan: (plan) ->
        this.selected_plan = plan
        this.overlay = true
      get_img: (plan) ->
        this.assets[plan.img + '.png']
      signup: ->
        if !!this.request.name and $(this.$els.phone).inputmask('isComplete')
          swal 'Заявка отправлена', "#{this.request.name}, мы перезвоним Вам в ближайшее время", 'success'
          this.request_sent = true
          $.post '/requests',
            plan_id: this.selected_plan.id
            name: this.request.name
            phone: this.request.phone
        else
          swal 'Ошибка', 'Необходимо заполнить имя и телефон', 'error'
      menu: (id) ->
        this.current_tab = id
        $('html, body').animate
          scrollTop: $(".menu-#{id}").offset().top - 72
        , 500
      bind_menu_change: ->
        $('.content').each (index, el) =>
          $(el).waypoint (direction) =>
              if direction is 'down'
                this.current_tab = index + 1
            ,
              offset: '10%'
          $(el).waypoint (direction) =>
              if direction is 'up'
                this.current_tab = index + 1
            ,
              offset: '-90%'
    created: ->
      this.plans = JSON.parse this.plans
      this.assets = JSON.parse this.assets
    ready: ->
      # $('#video').on 'canplaythrough', =>
      # $('#video').on 'seeked', =>
      $("#fakeLoader").fadeOut()
      this.start_amimation()
      this.bind_menu_change()
