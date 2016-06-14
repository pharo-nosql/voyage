private
collectPragmasFor: aClass
	^ aClass isMeta 
		ifTrue: [ self collectPragmasFrom: Metaclass to: Behavior ]
		ifFalse: [ self collectPragmasFrom: aClass theMetaClass to: Class ]