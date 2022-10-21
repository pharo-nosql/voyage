accessing
identityStrategy

	^ identityStrategy ifNil: [ 
		identityStrategy := self defaultIdentityStrategy ]