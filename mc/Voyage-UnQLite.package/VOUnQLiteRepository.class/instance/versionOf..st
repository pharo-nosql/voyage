accessing
versionOf: anObject 
	| cache |
	cache := self cacheAt: anObject class.
	^ cache versionAt: (cache keyAtValue: anObject)
		