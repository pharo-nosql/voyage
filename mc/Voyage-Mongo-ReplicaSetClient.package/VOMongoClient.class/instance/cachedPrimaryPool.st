private
cachedPrimaryPool
	^ cachedPrimaryPool ifNil: [
		| primaryMember |
		primaryMember := 
			self cachedReplicaSetStatus members 
				detect: #isPrimary
				ifNone: [ 
					"Wait election."
					self logRecoveringFrom: 'no primary replica set (wait)'.
					cachedReplicaSetStatus := nil.
					3 seconds wait. 
					
					self flag: #todo. "Infinite recursion if there is no primary"
					^ self cachedPrimaryPool. ].
		
		cachedPrimaryPool := 
			cachedPoolByMember 
				at: primaryMember name 
				ifAbsentPut: [ self newPoolFor: primaryMember ] ]