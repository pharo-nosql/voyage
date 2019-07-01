voyage
descriptionShadowKeywords
	<voyageDescriptionPlatforms: #(mongo)>
	^ VOMongoShadowDescription new
		accessor: #keywords;
		attributeName: 'keywords_downcase';
		transformationBlock: [ :keywords | keywords collect: [ :each |  each asLowercase ] ];
		yourself