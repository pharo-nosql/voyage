persistence
selectOne: aClass id: anId
	"Special case, EJDB allows fast search by id... we use it specially in proxies"

	^ self selectOneByIdOperation 
		queryClass: aClass;
		id: anId;
		execute