angular.module 'jtg.beacon'

.controller 'BroadcastCtrl', ($scope, socket) ->
  $scope.broadcast = (message) ->
    socket.emit 'chat', message if message
