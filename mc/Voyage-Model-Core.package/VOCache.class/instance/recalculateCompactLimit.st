private
recalculateCompactLimit 
	self compactLimit: (self class 
		calculateCompactLimit: self compactLimit
		forSize: objects size)