persistence
selectMany: aClass where: condition limit: limit offset: offset
	"unqlite does not seems to have a way to execute a query with offset and limit, so we 
	 simulate it for now. 
	 Offset is zero based."
	| selected size |
	
	selected := self selectMany: aClass where: condition.
	size := selected size.
	size < offset ifTrue: [ ^ #() ].
	
	^ selected copyFrom: offset + 1 to: ((offset + limit) min: size)