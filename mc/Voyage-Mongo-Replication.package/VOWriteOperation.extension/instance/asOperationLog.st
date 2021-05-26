*Voyage-Mongo-Replication
asOperationLog
	^ Dictionary new
		at: 'collectionName' put: self object class voyageCollectionName;
		at: 'operation' put: self operationLogName;
		at: 'createdDate' put: Date today;
		at: 'createdAt' put: DateAndTime now;
		yourself.