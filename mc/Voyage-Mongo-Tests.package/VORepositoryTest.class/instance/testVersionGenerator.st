tests
testVersionGenerator
	| gen |

	gen := VOMongoVersionGenerator new.
	self repository versionGenerator: gen.
	self assert: gen == self repository versionGenerator.