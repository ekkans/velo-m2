GalleryCtrl = null
### @ngInject ###
GalleryCtrl = ($scope, Gallery) ->

  Gallery.findByName('home').then (gallery) ->
    $scope.slides = gallery.slides if gallery?

angular
  .module 'app'
  .controller 'GalleryCtrl', GalleryCtrl
