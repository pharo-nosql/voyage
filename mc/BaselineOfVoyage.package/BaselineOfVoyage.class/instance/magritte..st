external projects
magritte: spec
	spec 
		baseline: 'Magritte' 
			with: [ spec repository: 'github://magritte-metamodel/magritte:pharo10-ready/source';
			loads: #( 'Core' ) ]