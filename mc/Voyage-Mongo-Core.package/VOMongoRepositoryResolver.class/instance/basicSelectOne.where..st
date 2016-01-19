private persistence
basicSelectOne: aClass where: aDictionary
	| json result |
	
	"Selecting an instance of aClass should be done in the Mongo query, not here.
	In the meantime, this is working. Slow, but working."
	self flag: #todo.
	
	json := self basicRawSelectOne: aClass where: aDictionary.
	json isEmptyOrNil 
		ifFalse: [ result := self retrieveObjectOf: aClass json: json ].
			
	^(result isKindOf: aClass) 
		ifTrue: [ result ]
		ifFalse: [ nil ]