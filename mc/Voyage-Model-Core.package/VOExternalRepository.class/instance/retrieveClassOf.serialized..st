private
retrieveClassOf: aClass serialized: aDictionary
	| retrievedClass |

	aDictionary 
		at: VOJSONSerializer fieldType 
		ifPresent: [ :type | 
			retrievedClass :=  self classForType: type asSymbol.
			(retrievedClass = aClass or: [ retrievedClass inheritsFrom: aClass persistentClass ])
				ifFalse: [ 
					VOError signal: ('Bad object requested ({1} does not inherits from {2})' format: {retrievedClass name. aClass name })] ].
			
	^retrievedClass ifNil: [ aClass ]