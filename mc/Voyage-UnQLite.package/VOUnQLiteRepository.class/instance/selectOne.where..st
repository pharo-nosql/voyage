persistence
selectOne: aClass where: condition
	| rawSelected selected |
	rawSelected := (self collectionAt: aClass) detect: condition.
	rawSelected ifNil: [ ^ nil ].
	selected := self materializeObject: rawSelected of: aClass.
	^ aClass == aClass persistentClass 
		ifTrue: [ selected ]
		ifFalse: [ nil ]