versions
v1_3_6: spec
	<version: '1.3.6'>

	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'Voyage' with: [ 
					spec 
						className: 'VoyageMongo';
						repository: 'github://pharo-nosql/voyage:1.3.6/mc' ];
				import: 'Voyage' ]