execution
execute

	^ repository
		materializeSelection: (repository collectionAt: queryClass) selectAll
		of: queryClass