private
materializeSelection: rawSelected of: aClass
	| selected |
	selected := rawSelected collect: [ :each | self materializeObject: each of: aClass ].
	^ aClass == aClass persistentClass 
		ifTrue: [ selected ]
		ifFalse: [ selected select: [ :each | each isKindOf: aClass ] ]