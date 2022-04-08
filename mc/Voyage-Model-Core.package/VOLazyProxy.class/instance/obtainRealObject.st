private
obtainRealObject

	objectId ifNil: [ ^ nil ].
	^ repository 
		objectWithClass: objectClass 
		andId: objectId 