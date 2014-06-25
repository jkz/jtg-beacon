angular.module 'jtg.beacon', [
  'socket.io'
]

.service '$cookies', ->
  # Shim for cookies, remove when installed
  {}

.config (socketProvider) ->
  socketProvider.config.host = 'http://localhost:8081'
  socketProvider.config.host = 'https://hub-jessethegame.herokuapp.com:443'
  socketProvider.config.host = 'http://pewpew.nl:5000'

.run (socket) ->
  console.log "jtg.beacon"

  socket.on 'ack', ->
    console.log 'ACK'

  socket.on 'connect', ->
    socket.emit 'init', 'beacon'
