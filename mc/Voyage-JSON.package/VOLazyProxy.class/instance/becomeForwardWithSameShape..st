private
becomeForwardWithSameShape: otherObject
	"This is a fast become forward for use in anonymous subclasses that have shapes 
	equal to objects of the target class."

	otherObject class = objectClass
		ifFalse: [ ^ self error: 'Tried converting proxy to ' , otherObject class name , 
			' when proxy is specified as ' , objectClass name ].
	objectClass adoptInstance: self.
	self copyFrom: otherObject