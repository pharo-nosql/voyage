external projects
magritte: spec
	spec 
		baseline: 'Magritte' 
			with: [ spec repository: 'github://magritte-metamodel/magritte:v3.8/source';
			loads: #( 'Core' ) ]