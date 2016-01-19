baselines
baseline10: spec
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline. 
		spec repository: 'http://smalltalkhub.com/mc/estebanlm/Voyage/main'.
		
		spec 
			project: 'Magritte2' with: [ 
				spec
					className: 'ConfigurationOfMagritte2';
					file: 'ConfigurationOfMagritte2';
					version: #stable;
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'MongoTalk' with: [ 
				spec
					className: 'ConfigurationOfMongoTalk';
					file: 'ConfigurationOfMongoTalk';
					version: #stable;
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];	
			package: 'Voyage-Model-Core';
			package: 'Voyage-Memory-Core' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Seaside-Container' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Mongo-Core' with: [ spec requires: #('MongoTalk' 'Voyage-Model-Core') ];
			package: 'Voyage-Mongo-Magritte' with: [ spec requires: #('Magritte2' 'Voyage-Mongo-Core') ];
			package: 'Voyage-Mongo-Utils' with: [ spec requires: #('Voyage-Mongo-Core') ].
			
		spec
			group: 'default' with: #('Core' 'Memory');
			group: 'Core' with: #('Voyage-Model-Core');
			group: 'Memory' with: #('Voyage-Memory-Core');
			group: 'Mongo' with: #('Voyage-Mongo-Core' 'Voyage-Mongo-Magritte' 'Voyage-Mongo-Utils') ].