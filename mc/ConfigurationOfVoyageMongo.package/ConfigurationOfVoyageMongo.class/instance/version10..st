versions
version10: spec
	<version: '1.0' imports: #('1.0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'release version'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '6/12/2012 18:14'.
		spec 
			project: 'Magritte2' with: #'stable';
			project: 'MongoTalk' with: #'stable'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-EstebanLorenzano.3';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-EstebanLorenzano.1';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-EstebanLorenzano.23';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.18';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-EstebanLorenzano.3';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].
