versions
version131: spec
	<version: '1.3.1' imports: #('1.3-baseline')>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2014-10-03 19:00'.
		spec 
			project: 'Magritte3' with: #'stable';
			project: 'MongoTalk' with: #'stable'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-EstebanLorenzano.16';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-NorbertHartl.3';
			package: 'Voyage-Serializer' with: 'Voyage-Serializer-usmanbhatti.6';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.1';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-EstebanLorenzano.53';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.32';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-FrancoisStephany.14';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].