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
    plan_id = '1'

    $scope.signup = ->
      if $scope.name.length && $scope.phone.length
        $http.post '/requests',
          plan_id: plan_id
          name: $scope.name
          phone: $scope.phone
        .success (response) ->
          console.log "success"
        .error (response) ->
          console.log "error"
      else
        console.log "Пустые поля"
