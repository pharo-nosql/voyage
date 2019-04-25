*Voyage-Mongo-Core
open
	stream := GratuitousIncompatibilities socketStreamHost: host port: port.
	stream socket setOption: 'TCP_NODELAY' value: 1.
	authCache := nil