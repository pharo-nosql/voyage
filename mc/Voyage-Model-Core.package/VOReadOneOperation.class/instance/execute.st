as yet unclassified
execute
	| data result |
	
	"Selecting an instance of aClass should be done in the Mongo query, not here.
	In the meantime, this is working. Slow, but working."
	self flag: #todo.
	
	data := self basicSelectOne: queryClass where: where.
	data isEmptyOrNil 
		ifFalse: [ result := repository retrieveQueriedInstanceOf: queryClass serialized: data ].
			
	^ (result isKindOf: queryClass) 
		ifTrue: [ result ]
		ifFalse: [ nil ]