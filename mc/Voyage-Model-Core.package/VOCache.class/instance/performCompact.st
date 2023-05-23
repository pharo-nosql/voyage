private
performCompact 
	| deadKeys |
	
	deadKeys := Set new.
	objects keysAndValuesDo:  [ :key :value | 
		value ifNil: [ deadKeys add: key ] ].
	deadKeys do: [ :each | 
		objects removeKey: each.
		versions removeKey: each ].
	objects compact.
	reversedObjects compact.
	versions compact.