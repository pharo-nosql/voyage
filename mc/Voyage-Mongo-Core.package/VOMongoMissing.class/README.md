I'm a "missing" object to resolve lost references.

When an object reference is missing and the persistent class allowMissingContent (see VOMongoContainer), I replace the missing content. Next save of object with reference will be replaced by nil.

Is a lazy way to keep database integrity. 
It can be called "eventual integrity" :P