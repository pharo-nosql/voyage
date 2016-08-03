versions
v1_0: spec
	<version: '1.0'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					className: 'BaselineOfVoyageMongo';
					loads: #('unqlite tests');
					repository: 'github://pharo-nosql/voyage:unqlite-1.0/mc' ];
			import: 'Voyage' ]