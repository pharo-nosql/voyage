persistence
remove: anObject 
	| id |
	id := self idOf: anObject.
	id ifNil: [ NotFound signal: (anObject asString, ' not found.') ].
	self commit: [ 
		^ (self collectionAt: anObject class) remove: id ]