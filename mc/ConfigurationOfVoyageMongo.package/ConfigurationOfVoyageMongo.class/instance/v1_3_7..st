versions
v1_3_7: spec
	<version: '1.3.7'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					className: 'BaselineOfVoyageMongo';
					repository: 'github://pharo-nosql/voyage:1.3.7/mc' ];
			import: 'Voyage' ]