versions
v1_4_1: spec
	<version: '1.4.1'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					className: 'BaselineOfVoyage';
					loads: #('memory' 'unqlite tests');
					repository: 'github://pharo-nosql/voyage:1.4.1/mc' ];
			import: 'Voyage' ]