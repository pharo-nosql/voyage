private
compactIfNeeded 
	objects size > self compactLimit
		ifTrue: [ 
			self mutex critical: [ self performCompact ]. 
			self recalculateCompactLimit ]