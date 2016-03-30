accessing
baseline: spec
	<baseline>
	
	spec for: #common do: [
		self magritte3: spec.
		self mongoTalk: spec.
		self imageWorker: spec.
				
		spec
			package: 'Voyage-Model-Core';
			package: 'Voyage-Memory-Core' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Seaside-Container' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Mongo-Core' with: [ spec requires: #('MongoTalk' 'Voyage-Model-Core') ];
			package: 'Voyage-Mongo-Magritte' with: [ spec requires: #('Magritte3' 'Voyage-Mongo-Core') ];
			package: 'Voyage-Mongo-Tests' with: [ spec requires: #('Voyage-Mongo-Core') ];
			package: 'Voyage-Mongo-MultipleImageTests' with: [ spec requires: #('Voyage-Mongo-Tests' 'ImageWorker') ];
			package: 'Voyage-Mongo-Utils' with: [ spec requires: #('Voyage-Mongo-Core') ].
			
		spec
			group: 'default' with: #('core' 'memory' 'mongo' 'tests' 'multiple-image-tests');
			group: 'core' with: #('Voyage-Model-Core');
			group: 'memory' with: #('Voyage-Memory-Core');
			group: 'mongo' with: #('Voyage-Mongo-Core' 'Voyage-Mongo-Magritte' 'Voyage-Mongo-Utils');
			group: 'tests' with: #('Voyage-Mongo-Tests');
			group: 'multiple-image-tests' with: #('Voyage-Mongo-MultipleImageTests') ].