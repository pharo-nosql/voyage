running
tearDown
	super tearDown.
	(VOTestObject allSubclasses 
		collect: [ :each | each persistentClass ] as: Set)
		do: [ :each | repository removeAll: each ].
	repository := nil.