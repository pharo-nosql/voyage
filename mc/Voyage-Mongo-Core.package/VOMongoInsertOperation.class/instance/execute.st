as yet unclassified
execute
	"repository newIdFor: self."
	id ifNil: [ self halt ].
	repository execute: [ self basicSave ]