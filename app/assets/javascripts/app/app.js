angular.module('myApp', ['ngRoute', 'myApp.controllers', 'myApp.services', 'myApp.directives', 'myApp.filters'])
  .config(function($routeProvider) {
    $routeProvider.when('/', {
      templateUrl: '/templates/dashboard.html',
      controller: 'HomeController',
      resolve: {
        session: function(SessionService) {
          return SessionService.getCurrentUser();
        }
      }
    })
    .otherwise({ redirectTo: '/'});
  });