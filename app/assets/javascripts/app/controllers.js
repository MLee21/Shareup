angular.module('myApp.controllers', [])
  .controller('HomeController', function($scope, session, SessionService, ArticleService) {
      $scope.user = session.user;
    ArticleService.getLatestFeed()
    .then(function(data) {
      $scope.articles = data;
      console.log($scope.articles);
    });
  });