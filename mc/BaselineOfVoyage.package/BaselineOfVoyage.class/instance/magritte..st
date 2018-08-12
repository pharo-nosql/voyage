external projects
magritte: spec
	spec 
		baseline: 'Magritte' 
			with: [ spec repository: 'github://zweidenker/magritte:add-pharo7-support/source';
			loads: #( 'Core' ) ]