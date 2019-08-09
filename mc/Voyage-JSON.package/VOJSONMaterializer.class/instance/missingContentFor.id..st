private
missingContentFor: aClass id: objectId
	| description |
	description := self repository descriptionBuilder for: aClass.
	description isAllowMissingContent
		ifFalse: [ VOError signal: ('Reference  not found {1}: {2}' format: {aClass name. objectId}) ].
		
	^VOMissingObject class: aClass id: objectId