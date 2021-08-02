accessing
at: anOID
	^ (objects at: anOID ifAbsent: [ nil ]) value