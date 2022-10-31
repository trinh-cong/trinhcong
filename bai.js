var app = angular.module("myApp", []);

app.controller("myCtrl", function($scope){
    console.log("My controller......");


    $scope.users = [
        {address: "cong", email: "ctrinhtu@gmail.com", phonenumber:"0364132966",fullname: "trinh tu cong"},
        {address: "thuy anh", email: "ngthuyanh@gmail.com", phonenumber:"0653335665",fullname:"nguyen thuy anh"},
        {address: "dieu huyen", email: "huyendieu@gmail.com",phonenumber:"0656562323",fullname: "nguyen dieu huyen"},
    ];
    $scope.addUser = function(){
        $scope.users.push($scope.newUser);
        $scope.newUser = {};
        $scope.message = "New User Added successfully";
    };

    $scope.selectUser = function(user){
        console.log(user);
        $scope.clickedUser = user;
    };
    $scope.editUser = function(){
        $scope.message = "User Edited successfully";
    };

    $scope.deleteUser = function(){
        $scope.users.splice($scope.users.indexOf($scope.clickedUser),1);
        $scope.message = "more success";
    };
    $scope.clearMessage = function(){
        $scope.message = "";
    };

});