accessing
using: aRepository do: aBlock
	| oldRepository |
	
	oldRepository := self current.
	self setRepository: aRepository.
	aBlock ensure: [ self setRepository: oldRepository ]