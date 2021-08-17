removing
removeValue: anObject
	self mutex critical: [ 
		self basicRemoveValue: anObject  ]