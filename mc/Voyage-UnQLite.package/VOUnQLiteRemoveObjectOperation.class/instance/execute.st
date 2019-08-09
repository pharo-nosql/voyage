execution
execute 
	| id |
	
	id := repository idOf: object.
	id ifNil: [ NotFound signal: (object asString, ' not found.') ].
	repository commit: [ 
		^ (repository collectionAt: object class) removeAt: id ]