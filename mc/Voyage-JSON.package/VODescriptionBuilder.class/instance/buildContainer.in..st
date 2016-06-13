private
buildContainer: aPragma in: aClass
	| description |
	description := aPragma method valueWithReceiver: aClass arguments: #().
	
	description collectionName isEmptyOrNil 
		ifTrue: [ description collectionName: (self collectionNameFor: aClass) ].
	
	^description