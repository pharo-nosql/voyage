private replication
mongoDo: aBlock
	| mongo |
	mongo :=
		Mongo 
			host: repository host 
			port: repository port.
	mongo open.

	self flag: #todo. "On error, should (1) retry and (2) be able to ask other members, since the 'initial' repository may be down but others in the replica set be available."

	[ aBlock value: mongo ] ensure: [ mongo close ]