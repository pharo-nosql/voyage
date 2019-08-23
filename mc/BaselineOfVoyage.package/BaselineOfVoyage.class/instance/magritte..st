external projects
magritte: spec
	spec 
		baseline: 'Magritte' 
			with: [ spec repository: 'github://magritte-metamodel/magritte:v3.6/source';
			loads: #( 'Core' ) ]