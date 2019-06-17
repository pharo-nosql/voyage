as yet unclassified
addOperation: anOperation 
	operation isNil ifTrue: [  
		^ operation := anOperation ]. 
	operation := operation , anOperation