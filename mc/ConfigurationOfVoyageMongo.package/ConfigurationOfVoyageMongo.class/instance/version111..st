versions
version111: spec
	<version: '1.1.1' imports: #('1.0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'release version'.
		spec author: 'EstebanLorenzano'.
		spec 
			project: 'Magritte2' with: #'stable';
			project: 'MongoTalk' with: '1.3'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-FrancoisStephany.7';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-EstebanLorenzano.1';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-FrancoisStephany.32';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.20';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-FrancoisStephany.14';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].
