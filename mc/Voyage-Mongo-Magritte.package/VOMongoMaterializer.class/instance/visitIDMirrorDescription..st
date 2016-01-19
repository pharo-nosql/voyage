visiting
visitIDMirrorDescription: aDescription
	
	aDescription accessor
		write: (self jsonAt: #'_id')
		to: self object.