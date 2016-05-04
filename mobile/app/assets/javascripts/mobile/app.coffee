angular.module('Courses', [
  # 'ng-rails-csrf',
  'mobile-angular-ui',
  'mobile-angular-ui.components.navbars',
  'mobile-angular-ui.components.sidebars',
  'mobile-angular-ui.components.scrollable',
  # 'mobile-angular-ui.components.capture',
  'mobile-angular-ui.components.switch',
  'mobile-angular-ui.components.modals',
  'mobile-angular-ui.core.outerClick',
  'mobile-angular-ui.core.sharedState',
  'mobile-angular-ui.core.fastclick',
  'mobile-angular-ui.core.activeLinks',
])
.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
angular.module('Courses')
.controller 'MainCtrl', ($scope, $http) ->
    console.log "MainCtrl was started"
    $scope.beginner = "Выбрать"
    $scope.proffesional = "Выбрать"
    $scope.geek = "Выбрать"
    $scope.plan_id = 0
    $scope.name = ''
    $scope.phone = ''


    $scope.selectSkill = (plan_id) ->
      $scope.beginner = "Выбрать"
      $scope.proffesional = "Выбрать"
      $scope.geek = "Выбрать"
      $scope.plan_id = plan_id
      switch plan_id
        when 1 then $scope.beginner = "Выбрано"
        when 2 then $scope.proffesional = "Выбрано"
        when 3 then $scope.geek = "Выбрано"


      console.log 'plan_id>>>>', $scope.plan_id

    $scope.signup = ->
      $scope.error = false
      if $scope.plan_id == 0
        $scope.error = true
        $scope.errorMessage = "Не выбран тип обучения"

      if !$scope.name.length || !$scope.phone.length
        $scope.error = true
        $scope.errorMessage = "Поле имя и телефон не могут быть пустыми"


      if $scope.error == false
        $http.post '/requests',
          plan_id: $scope.plan_id
          name: $scope.name
          phone: $scope.phone
        .success (response) ->
          $scope.success = true
          $scope.successMessage = $scope.name + " cпасибо что выбрали нас! Наш менеджер свяжется с вами в близжайшее время."
        .error (response) ->
          $scope.error = true
          $scope.errorMessage = "Извините что то пошло не так, попробуйте позже"
