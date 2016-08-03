versions
dev: spec
	<version: 'dev'>

	spec for: #'common' do: [ 
		spec blessing: #'development'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					className: 'BaselineOfVoyage';
					loads: #('mongo tests');
					repository: 'github://pharo-nosql/voyage:master/mc' ];
			import: 'Voyage' ].