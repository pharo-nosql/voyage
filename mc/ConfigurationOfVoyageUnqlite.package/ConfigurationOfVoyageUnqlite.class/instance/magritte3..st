external projects
magritte3: spec
	spec project: 'Magritte3' with: [ 
		spec
			className: 'ConfigurationOfMagritte3';
			file: 'ConfigurationOfMagritte3';
			version: #stable;
			loads: #( 'Core' );
			repository: 'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main' ]