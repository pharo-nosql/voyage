private
descriptionBuilder
	^ descriptionBuilder ifNil: [ descriptionBuilder := VOMongoDescriptionBuilder new ]