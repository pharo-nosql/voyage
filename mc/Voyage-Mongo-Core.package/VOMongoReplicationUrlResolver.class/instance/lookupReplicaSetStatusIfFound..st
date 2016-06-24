private
lookupReplicaSetStatusIfFound: foundBlock

	| timeout |
	timeout := DateAndTime now + repository replicaSetLookupTimeout.
	self debugLog: 'lookup available mongo to get replica set status'.

	[[ DateAndTime now < timeout ] whileTrue: [ 
		self basicLookupReplicaSetStatusIfFound: [ :status | ^ foundBlock value: status ]]]
		on: MongoCommandError do: [:error | 
			self debugLog: 'no replica set: ', error asString ].

	self debugLog: 'no replica set'.