versions
version133: spec
	<version: '1.3.3' imports: #('1.3-baseline')>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec author: 'TorstenBergmann'.
		spec timestamp: '2015-03-19 20:00'.
		spec 
			project: 'Magritte3' with: #'stable';
			project: 'MongoTalk' with: #'stable'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-TorstenBergmann.17';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-TorstenBergmann.4';
			package: 'Voyage-Serializer' with: 'Voyage-Serializer-usmanbhatti.6';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.1';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-TorstenBergmann.54';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-TorstenBergmann.34';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-TorstenBergmann.15';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].