User = null
### @ngInject ###
User = ($q, $http, Rails, CacheFactory, AccessToken) ->

  base = "//#{Rails.host}/api/users"
  usersCache = CacheFactory.get("usersCache.#{Rails.apiNamespace}") or
    CacheFactory "usersCache.#{Rails.apiNamespace}",
      maxAge: (10).minutes()

  accessTokenUrl = "//#{Rails.host}/api/v1/users/me"
  userAccessTokenCache = CacheFactory.get("userAccessTokenCache.#{Rails.apiNamespace}") or
    CacheFactory "userAccessTokenCache.#{Rails.apiNamespace}",
      maxAge: (15).minutes()
      storageMode: 'sessionStorage'
      onExpire: (key, value) ->
        if value
          $http.get(accessTokenUrl, cache: false).success (data) ->
            AccessToken.set data.token
            usersCache.put(key, data)

  me: ->
    deferred = $q.defer()
    $http.get(accessTokenUrl, cache: userAccessTokenCache).success (data) ->
      data = humps.camelizeKeys(data)
      AccessToken.set data.token
      deferred.resolve data
    deferred.promise

angular
  .module 'app'
  .service 'User', User
