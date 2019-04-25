*Voyage-Mongo-Core
openWithTimeout: aTimeout
	| addr |
	"Waits the specified number of seconds to open the connection."
	"TODO(zecke): Make this a go like Context with proper deadlines."
	addr := NetNameResolver addressForName: host timeout: 20.
	stream := SocketStream openConnectionToHost: addr port: port timeout: aTimeout.
	stream socket setOption: 'TCP_NODELAY' value: 1.
	stream binary.
	authCache := nil