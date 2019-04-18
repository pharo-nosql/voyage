versions
v1_5: spec
	<version: '1.5'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					loads: #('memory' 'mongo tests');
					repository: 'github://pharo-nosql/voyage:1.5/mc' ];
			import: 'Voyage' ]