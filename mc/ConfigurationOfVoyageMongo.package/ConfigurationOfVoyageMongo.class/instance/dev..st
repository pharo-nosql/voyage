versions
dev: spec
	<version: 'dev'>

	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'VoyageMongo'
					with: [ spec repository: 'github://pharo-nosql/voyage/mc' ];
				import: 'Voyage' ]