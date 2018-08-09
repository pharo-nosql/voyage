external projects
magritte: spec
	spec 
		baseline: 'Magritte' 
			with: [ spec repository: 'github://magritte-metamodel/magritte:v3.5.2/repository';
			loads: #( 'Core' ) ]