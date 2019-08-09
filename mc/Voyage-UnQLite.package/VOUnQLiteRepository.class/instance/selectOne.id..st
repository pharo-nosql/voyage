persistence
selectOne: aClass id: anId
	"Special case, unqlite allows fast search by id... we use it specially in proxies"
	| rawSelected selected |

	rawSelected := (self collectionAt: aClass) at: anId.
	rawSelected ifNil: [ ^ nil ].
	selected := self materializeObject: rawSelected of: aClass.
	^ (selected isKindOf: aClass persistentClass) 
		ifTrue: [ selected ]
		ifFalse: [ nil ]	