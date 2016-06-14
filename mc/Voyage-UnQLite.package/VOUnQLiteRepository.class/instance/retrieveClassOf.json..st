private
retrieveClassOf: aClass json: aDictionary
	| retrievedClass |

	aDictionary 
		at: VOUnQLiteJSONSerializer fieldType
		ifPresent: [ :type | 
			retrievedClass := Smalltalk globals at: type asSymbol.
			(retrievedClass = aClass or: [ retrievedClass inheritsFrom: aClass persistentClass ])
				ifFalse: [ 
					VOUnQLiteError signal: ('Bad object requested ({1} does not inherits from {2})' 
						format: {
							retrievedClass name. 
							aClass name })] ].
			
	^retrievedClass ifNil: [ aClass ]