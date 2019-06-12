private
collectContainerPragmasFor: aClass
	^ aClass isMeta
		ifTrue: [ self collectContainerPragmasFrom: Metaclass to: Behavior ]
		ifFalse: [ self collectContainerPragmasFrom: aClass classSide to: Class ]