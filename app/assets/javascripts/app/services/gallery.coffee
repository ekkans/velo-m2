Gallery = null
### @ngInject ###
Gallery = ($q, $http, Rails, CacheFactory) ->

  base = "//#{Rails.host}/api/galleries"
  galleriesCache = CacheFactory.get("galleriesCache.#{Rails.apiNamespace}") or
    CacheFactory "galleriesCache.#{Rails.apiNamespace}",
      maxAge: (10).seconds()

  findByName: (name) ->
    deferred = $q.defer()
    $http.get(base,
      params:
        name: name
      cache: galleriesCache
    ).success (data) ->
      data = humps.camelizeKeys(data)
      deferred.resolve data
    deferred.promise

angular
  .module 'app'
  .service 'Gallery', Gallery
