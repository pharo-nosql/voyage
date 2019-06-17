private
serialize: anObject id: idObject
	^ repository newSerializer 
		serialize: anObject
		id: idObject