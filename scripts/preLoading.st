(SystemVersion current major < 6)
    ifTrue: [
        Metacello new 
	        repository: 'github://pharo-vcs/tonel';
	        baseline: 'Tonel';
	        load.
    ]
