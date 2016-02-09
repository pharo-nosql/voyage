private
ensurePersisted: anObject
	| future |
	
	future := self findFutureFor: anObject.
	future ifNil: [ self serialize: anObject ].	
	"It might be first nil, but added in serialize call... should we optimise this? ir is worthy?"
	^ self rawFuture: (self findFutureFor: anObject)