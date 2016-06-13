tests
testEmbededMaterialization
	| serialized object |
	
	serialized := {
		VOJSONSerializer fieldType->#Rectangle.	
		'origin' -> {
			VOJSONSerializer fieldType->#Point.
			'x'->1.
			'y'->2 
		} asDictionary.
		'corner' -> {
			VOJSONSerializer fieldType->#Point.
			'x'->3.
			'y'->4.
		} asDictionary.
	} asDictionary.
	
	object := self materializer 
		materialize: Rectangle basicNew
		fromJSON: serialized.
	
	self assert: object origin = (1@2).
	self assert: object corner = (3@4).