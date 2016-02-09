I'm a marker for an object who is persistent and "about to be persisted". This is used to prevent cyclic references. 
See VOMongoSerializer>>#ensurePersisted: for datails of its use. 

To be sure everything works (like fnding the future in cache, etc.),  I make sure some hacks happen: ==equals== and ==hash== are equivallent once the become happened. 
Of course, this is not recommendable as a general practice, but it works here :)