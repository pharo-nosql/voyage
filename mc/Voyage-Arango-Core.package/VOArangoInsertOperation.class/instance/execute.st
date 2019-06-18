execution
execute 
	serialized 
		at: repository fieldRootId put: id asString.
	repository withNewVersionFor: self do: [  :v |
		serialized 
			at: repository fieldVersion put: v asString.
		repository client
			createDocument: serialized collection: object class name ]