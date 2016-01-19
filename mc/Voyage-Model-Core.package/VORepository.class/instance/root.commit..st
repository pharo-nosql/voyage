persistence
root: anObject commit: aBlock
	"Specifies a root object, to perform better transactions. 
	 In many cases (as in memory repository, or relational based repository) this is the same as plain #commit:"
	self commit: aBlock