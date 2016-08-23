accessing
descriptionBuilder
	^descriptionBuilder ifNil: [ descriptionBuilder := VODescriptionBuilder repository: self ]