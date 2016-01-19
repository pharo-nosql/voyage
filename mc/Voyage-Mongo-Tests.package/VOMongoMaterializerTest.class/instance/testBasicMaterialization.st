tests
testBasicMaterialization
	| serialized object |
	
	serialized := {
		VOMongoSerializer fieldType->#Point.
		'x'->1.
		'y'->2.
	} asDictionary.
	
	object := self materializer 
		materialize: Point basicNew 
		fromJSON: serialized.
	
	self assert: object x = 1.
	self assert: object y = 2.