accessing
onlyUpdateIfCurrent: aBoolean
	"Determine whether, on each update of an object, the repository must ensure the object's version is current, i.e. the object hasn't a newer version in the db."
	
	onlyUpdateIfCurrent := aBoolean