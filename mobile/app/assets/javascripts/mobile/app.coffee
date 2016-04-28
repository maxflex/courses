angular.module('Courses', [
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
.controller 'MainCtrl', [
  '$scope'
  ($scope) ->
    $scope.main = 'test'

]
