private
buildDirectAccessorFor: aString
	^MAPluggableAccessor 
		read: [ :anObject | anObject instVarNamed: aString ]
		write: [ :anObject :value | anObject instVarNamed: aString put: value ]