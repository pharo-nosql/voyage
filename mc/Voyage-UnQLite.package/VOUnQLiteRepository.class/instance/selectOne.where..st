persistence
selectOne: aClass where: condition
	| rawSelected selected |
	rawSelected := (self collectionAt: aClass) detect: condition.
	rawSelected ifNil: [ ^ nil ].
	selected := self materialize: rawSelected .
	^ aClass == aClass persistentClass 
		ifTrue: [ selected ]
		ifFalse: [ nil ]