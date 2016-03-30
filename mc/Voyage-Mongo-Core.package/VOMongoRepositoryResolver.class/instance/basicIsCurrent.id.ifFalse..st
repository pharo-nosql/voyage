private
basicIsCurrent: anObject id: idObject ifFalse: aBlockClosure
	
	| cachedVersion json retrievedVersion |
	idObject isNil ifTrue: [ "It is new" ^self ]. 

	cachedVersion := self cacheVersionAt: idObject.
	json := self basicRawSelectOne: anObject class where: (Dictionary with: '_id'-> idObject).

	json isNil ifTrue: [ "It was deleted" ^self ]. 

	retrievedVersion := json
		at: VOMongoSerializer fieldVersion
		ifAbsent: [ 0 ].
	cachedVersion = retrievedVersion ifFalse: [ "It is not current" ^aBlockClosure value ]
