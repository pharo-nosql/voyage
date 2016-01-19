versions
version134: spec
	<version: '1.3.4' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: '- added fast-become for VOLazyProxy
- using new  #keyOf: implementation (faster)'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '5/9/2015 08:36'.
		spec 
			project: 'Magritte3' with: '3.3.0';
			project: 'MongoTalk' with: '1.9.0'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-TorstenBergmann.17';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-TorstenBergmann.4';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.2';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-EstebanLorenzano.57';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-TorstenBergmann.34';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-EstebanLorenzano.16';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].
