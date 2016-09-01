private
jsonAt: aString 
	^self json 
		at: aString
		ifAbsent: [ nil ]