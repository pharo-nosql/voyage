private
retrieveClassOf: aClass json: aDictionary
	| retrievedClass |

	aDictionary 
		at: VOMongoSerializer fieldType 
		ifPresent: [ :type | 
			retrievedClass :=  Smalltalk globals at: type asSymbol.
			(retrievedClass = aClass or: [ retrievedClass inheritsFrom: aClass persistentClass ])
				ifFalse: [ 
					VOMongoError signal: ('Bad object requested ({1} does not inherits from {2})' format: {retrievedClass name. aClass name })] ].
			
	^retrievedClass ifNil: [ aClass ]