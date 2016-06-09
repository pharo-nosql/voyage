versions
version135: spec
	<version: '1.3.5' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Use newer Mongo driver 1.9.2 for Pharo 5'.
		spec author: 'TorstenBergmann'.
		spec timestamp: '5/9/2015 08:36'.
		spec 
			project: 'Magritte3' with: '3.3.0';
			project: 'MongoTalk' with: '1.9.2'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-TorstenBergmann.17';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-EstebanLorenzano.5';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.2';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-EstebanLorenzano.62';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.35';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-EstebanLorenzano.22';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].
