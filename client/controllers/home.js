require('../services/home');


angular.module(MODULE_NAME)
.controller('homeCtrl', ['$scope', 'HomeService', '$timeout', function($scope, HomeService, $timeout) {
  var ctrl = this;

}]);

    angular.module(MODULE_NAME)
    .directive('fileModel', ['$parse', function ($parse) {
        return {
           restrict: 'A',
           link: function(scope, element, attrs) {
              var model = $parse(attrs.fileModel);
              var modelSetter = model.assign;
              element.bind('change', function(){
                 scope.$apply(function(){
                    modelSetter(scope, element[0].files[0]);
                 });
              });
           }
        };
     }]);
