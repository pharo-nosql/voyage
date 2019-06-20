api
delete: anExample from: aCollection withConcern: aConcern limit: aLimit
	"Deletes from db with query"
	
	^ self subclassResponsibility