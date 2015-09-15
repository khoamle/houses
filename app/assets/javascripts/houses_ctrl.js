(function() {
  "use strict";
 
  angular.module("app").controller("housesCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/houses.json").then(function(response) {
        $scope.houses = response.data;
      });

    $scope.sortBy = function(attribute){
      if(attribute != $scope.orderAttribute) {
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }

      $scope.orderAttribute = attribute;
    };

    $scope.addHouse = function(street_address, city, state, zip_code, country) {
      var house = {
        street_address: street_address,
        city: city,
        state: state,
        zip_code: zip_code,
        country: country
      };

      $http.post('/api/v1/houses.json', house).then(function(response){
        $scope.houses.push(house);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
      
    };
    $scope.toggleOrder = function() {
      $scope.descending = !scope.descending;
    };

    // $scope.deleteHouse = function(house) {
      
    //   $scope.houses.splice(index, 1);
    // }

    }
    window.scope = $scope;
  });

}());