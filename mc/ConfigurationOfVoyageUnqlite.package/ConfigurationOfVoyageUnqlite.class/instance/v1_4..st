versions
v1_4: spec
	<version: '1.4'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					className: 'BaselineOfVoyageUnqlite';
					loads: #('unqlite tests');
					repository: 'github://pharo-nosql/voyage:1.4/mc' ];
			import: 'Voyage' ]