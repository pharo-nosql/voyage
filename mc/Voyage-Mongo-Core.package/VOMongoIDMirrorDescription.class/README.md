This is a mongo description that allows to mirror the 
mongo _id from the JSON into an instance  variable, for 
instance into id: 

mongoAttributeID
	<mongoDescription>
	^ VOMongoIDMirrorDescription new
		attributeName: #'id';
		yourself		 