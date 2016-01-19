private
ensurePersisted: anObject
	| future |

	"Yeah... this is a bit hacky, but is a good way to prevent cyclic persist"
	future := VOMongoFuture new. 
	future become: anObject. 
	[ self repository 
		save: future 
		id: anObject futureId ]
	ensure: [ anObject become: future ].
	"... and restore object in the cache"
	self repository cache 
		at: (self keyOf: future) 
		put: anObject