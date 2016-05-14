MainCtrl = null
### @ngInject ###
MainCtrl = ($scope, $location, authService, Rails, User, AccessToken) ->

  setLoggedIn = ->
    if Rails.user # user is logged in
      token = AccessToken.get()
    authService.loginConfirmed 'success', (config) ->
      if Rails.user and config.url.indexOf("//#{Rails.host}") is 0
        config.headers['Authorization'] = "Bearer #{token}"
      config

  $scope.$on 'event:auth-loginRequired', ->
    logIn()

  logIn = ->

    if Rails.user # user is logged in
      User.me().then (data) ->
        if data.token
          setLoggedIn()
    else
      setLoggedIn()

angular
  .module 'app'
  .controller 'MainCtrl', MainCtrl
