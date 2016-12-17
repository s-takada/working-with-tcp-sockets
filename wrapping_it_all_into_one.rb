require 'socket'

Socket.tcp_server_loop(4481) do |connection|
  
  print 'Connection class: '
  p connection.class

  print 'Connections fileno: '
  p connection.fileno

  print 'Local address: '
  p connection.local_address

  print 'Remote address: '
  p connection.remote_address

  connection.close
end