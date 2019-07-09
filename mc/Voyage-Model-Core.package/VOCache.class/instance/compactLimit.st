private
compactLimit 
	^ compactLimit ifNil: [ compactLimit := self class defaultCompactLimit ]