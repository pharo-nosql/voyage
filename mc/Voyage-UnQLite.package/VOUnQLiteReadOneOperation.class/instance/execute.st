persistence
execute
	| rawSelected selected |

	rawSelected := (repository collectionAt: queryClass) detect: where.
	rawSelected ifNil: [ ^ nil ].
	selected := repository materializeObject: rawSelected of: queryClass.
	^ (selected isKindOf: queryClass persistentClass) 
		ifTrue: [ selected ]
		ifFalse: [ nil ]