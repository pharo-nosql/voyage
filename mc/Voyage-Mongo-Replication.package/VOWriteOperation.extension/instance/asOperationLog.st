*Voyage-Mongo-Replication
asOperationLog
	^ Dictionary new
		at: 'collectionName' put: self object class voyageCollectionName;
		at: 'operation' put: self journalOperationName;
		at: 'CreatedDate' put: Date today;
		at: 'CreatedAt' put: DateAndTime now;
		yourself.