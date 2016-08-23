private
lookupReplicaSetStatusIfFound: foundBlock

	| timeout |
	timeout := DateAndTime now + repository replicaSetLookupTimeout.
	resolver debugLog: 'lookup available mongo to get replica set status'.

	[[ DateAndTime now < timeout ] whileTrue: [ 
		self basicLookupReplicaSetStatusIfFound: [ :status | ^ foundBlock value: status ]]]
		on: MongoCommandError do: [:error | 
			resolver debugLog: 'no replica set: ', error asString ].

	resolver debugLog: 'no replica set'.