private
ensurePersisted: anObject

	(operations hasOperationFor: anObject) ifFalse:[
		self serialize: anObject ].	
	"It might be first nil, but added in serialize call... should we optimise this? it is worthy?"
	^ self rawFuture: (operations atObject: anObject)