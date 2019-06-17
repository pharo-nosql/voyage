accessing
atObject: anObject
	^ operations 
	
		detect: [  :each | each object = anObject ]