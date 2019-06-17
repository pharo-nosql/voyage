private
lookupReplicaSetStatusIfFound: foundBlock

	| timeout |
	timeout := DateAndTime now + repository replicaSetLookupTimeout.
	repository debugLog: 'lookup available mongo to get replica set status'.

	[[ DateAndTime now < timeout ] whileTrue: [ 
		self basicLookupReplicaSetStatusIfFound: [ :status | ^ foundBlock value: status ]]]
		on: MongoCommandError do: [:error | 
			repository debugLog: 'no replica set: ', error asString ].

	repository debugLog: 'no replica set'.