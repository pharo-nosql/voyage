private
missingContentFor: aClass id: objectId
	| description |
	description := self repository descriptionBuilder for: aClass.
	description isAllowMissingContent
		ifFalse: [ VOMongoError signal: ('Reference  not found {1}: {2}' format: {aClass name. objectId}) ].
		
	^VOMongoMissing class: aClass id: objectId