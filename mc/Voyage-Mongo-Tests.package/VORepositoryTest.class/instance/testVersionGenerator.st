tests
testVersionGenerator
	| gen |

	gen := VOSeedVersionGenerator new.
	self repository versionGenerator: gen.
	self assert: gen == self repository versionGenerator.