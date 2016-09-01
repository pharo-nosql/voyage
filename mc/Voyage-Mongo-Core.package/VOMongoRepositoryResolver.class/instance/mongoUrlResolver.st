accessing
mongoUrlResolver
	^ mongoUrlResolver ifNil: [
		mongoUrlResolver := repository mongoUrlResolverClass repository: repository resolver: self ]