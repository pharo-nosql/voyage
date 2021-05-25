*Voyage-Mongo-Replication
asOperationLog 
	^ super asOperationLog 
		at: 'payload' put: serialized;
		yourself
