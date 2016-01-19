versions
version125: spec
	<version: '1.2.5' imports: #('1.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '21 November 2013 12:57:59 pm'.
		spec 
			project: 'Magritte3' with: #'stable';
			project: 'MongoTalk' with: #'stable'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-EstebanLorenzano.13';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-EstebanLorenzano.1';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.1';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-EstebanLorenzano.48';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.28';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-FrancoisStephany.14';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].