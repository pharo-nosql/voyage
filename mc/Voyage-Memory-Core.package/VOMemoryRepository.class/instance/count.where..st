persistence
count: aClass where: condition
	^ (self selectMany: aClass where: condition) size.