versions
version1312: spec
	<version: '1.3.1.2' imports: #('1.3-baseline')>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'EstebanLorenzano'.
		spec timestamp: '2016-04-27 12:30'.
		spec 
			project: 'Magritte3' with: #'stable';
			project: 'MongoTalk' with: '1.6.1'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-EstebanLorenzano.16';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-NorbertHartl.3';
			package: 'Voyage-Serializer' with: 'Voyage-Serializer-usmanbhatti.6';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.1';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core.patch53-EstebanLorenzano.54';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.32';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-FrancoisStephany.14';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].