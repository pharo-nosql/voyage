I'm a special container for references (Classes). 
I can keep a reference in mongo, who will serialized as: 

Dictionary with: #referenceOf->[class name]

Ideally, you will add this as a definition of container for classes, this way: 

mongoContainer 
	<mongoContainer>
	^VOMongoReferenceContainer new 