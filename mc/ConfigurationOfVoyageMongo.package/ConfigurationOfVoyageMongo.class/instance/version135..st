versions
version135: spec
	<version: '1.3.5' imports: #('1.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'version 1.3.5'.
		spec author: 'NorbertHartl'.
		spec timestamp: '6/6/2016 12:58'.
		spec 
			project: 'Magritte3' with: #'stable';
			project: 'MongoTalk' with: #'stable'.
		spec 
			package: 'Voyage-Model-Core' with: 'Voyage-Model-Core-EstebanLorenzano.19';
			package: 'Voyage-Memory-Core' with: 'Voyage-Memory-Core-EstebanLorenzano.5';
			package: 'Voyage-Seaside-Container' with: 'Voyage-Seaside-Container-EstebanLorenzano.2';
			package: 'Voyage-Mongo-Core' with: 'Voyage-Mongo-Core-EstebanLorenzano.65';
			package: 'Voyage-Mongo-Magritte' with: 'Voyage-Mongo-Magritte-EstebanLorenzano.36';
			package: 'Voyage-Mongo-Tests' with: 'Voyage-Mongo-Tests-EstebanLorenzano.28';
			package: 'Voyage-Mongo-Utils' with: 'Voyage-Mongo-Utils-EstebanLorenzano.12'. ].
