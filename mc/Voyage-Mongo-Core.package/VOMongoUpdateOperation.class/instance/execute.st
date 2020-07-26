execution
execute
	repository
		withNewVersionFor: self
		do: [
			| searchDictionary |
			searchDictionary := Dictionary new
				at: repository fieldRootId put: id;
				yourself.

			ensureCurrent ifTrue: [
				| currentVersion |
				currentVersion := repository cacheVersionAt: id.
				searchDictionary at: repository fieldVersion put: currentVersion ].

			serialized at: repository fieldRootId put: id.

			self executeSearching: searchDictionary ]