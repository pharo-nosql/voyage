(SystemVersion current major = 6)
    ifTrue: [
        Metacello new
            baseline: 'Metacello';
            repository: 'github://metacello/metacello:pharo-6.1_dev/repository';
            onConflict: [ :ex | ex allow ];
            load ].
(SystemVersion current major = 5)
    ifTrue: [
        Metacello new 
	        repository: 'github://pharo-vcs/tonel';
	        baseline: 'Tonel';
	        load.
        Metacello new
            baseline: 'Metacello';
            repository: 'github://Metacello/metacello:master/repository';
            get.
        Metacello new
            baseline: 'Metacello';
            repository: 'github://Metacello/metacello:master/repository';
            onConflict: [:ex | ex allow];
            load ]

