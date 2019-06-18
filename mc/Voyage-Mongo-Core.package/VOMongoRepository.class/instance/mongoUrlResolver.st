accessing
mongoUrlResolver
	^ mongoUrlResolver ifNil: [
		mongoUrlResolver := self mongoUrlResolverClass repository: self ]