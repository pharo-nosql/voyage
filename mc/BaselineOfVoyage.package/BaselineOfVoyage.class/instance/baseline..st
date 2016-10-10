accessing
baseline: spec
	<baseline>
	
	spec for: #common do: [
		self magritte3: spec.
		self mongoTalk: spec.
		self punqlite: spec.
		self imageWorker: spec.
		
		spec
			"core"
			package: 'Voyage-Model-Core';
			package: 'Voyage-Model-Tests' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Memory-Core' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Memory-Tests' with: [ spec requires: 'Voyage-Memory-Core' ];
			package: 'Voyage-JSON' with: [ spec requires: #('Voyage-Model-Core' 'Magritte3') ];
			package: 'Voyage-JSON-Tests' with: [ spec requires: 'Voyage-JSON' ];
			"mongo"
			package: 'Voyage-Mongo-Core' with: [ spec requires: #('MongoTalk' 'Voyage-Model-Core') ];
			package: 'Voyage-Mongo-Tests';
			package: 'Voyage-Mongo-MultipleImageTests' with: [ spec requires: #('Voyage-Mongo-Tests' 'ImageWorker') ];
			"unqlite"
			package: 'Voyage-UnQLite' with: [ spec requires: #('PunQLite' 'Voyage-Model-Core') ];
			package: 'Voyage-UnQLite-Tests';			
			"utils"
			package: 'Voyage-Seaside-Container' with: [ spec requires: 'Voyage-Model-Core' ];
			package: 'Voyage-Mongo-Utils' with: [ spec requires: #('Voyage-Mongo-Core') ].
			
		spec
			group: 'default' with: #('core' 'memory' 'mongo tests');
			group: 'core' with: #('Voyage-Model-Core');
			group: 'memory' with: #('Voyage-Memory-Core');
			group: 'memory tests' with: #('Voyage-Memory-Tests');
			group: 'mongo' with: #('Voyage-JSON' 'Voyage-Mongo-Core' 'Voyage-Mongo-Utils');
			group: 'mongo tests' with: #('mongo' 'Voyage-Model-Tests' 'Voyage-JSON-Tests' 'Voyage-Mongo-Tests');
			group: 'mongo tests multiple' with: #('mongo tests' 'Voyage-Mongo-MultipleImageTests');
			group: 'unqlite' with: #('Voyage-JSON' 'Voyage-UnQLite');
			group: 'unqlite tests' with: #('unqlite' 'Voyage-Model-Tests' 'Voyage-JSON-Tests' 'Voyage-UnQLite-Tests') ].