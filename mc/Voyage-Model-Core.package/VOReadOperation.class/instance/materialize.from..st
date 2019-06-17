materializing
materialize: anObject from: serialized
	self flag: #todo.
	"Is this generic enough??"
	^ repository newMaterializer 
		materialize: anObject 
		from: serialized