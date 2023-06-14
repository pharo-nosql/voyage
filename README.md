Voyage 
======
Voyage is an object persistence abstraction layer for Pharo.

[![CI](https://github.com/pharo-nosql/voyage/actions/workflows/tests.yml/badge.svg)](https://github.com/pharo-nosql/voyage/actions/workflows/tests.yml)

Install
-------

You can install it executing scripts:

### Voyage-Mongo
```Smalltalk
Metacello new 
	repository: 'github://pharo-nosql/voyage/mc';
	baseline: 'Voyage';
	load: 'mongo tests'.
```

### Voyage-EJDB
```Smalltalk
Metacello new 
	repository: 'github://pharo-nosql/voyage/mc';
	baseline: 'Voyage';
	load: 'ejdb tests'.
```

### Voyage-UnQLite
*Note: This backend has been deprecated and it will not be maintained anymore*

```Smalltalk
Metacello new 
	repository: 'github://pharo-nosql/voyage/mc';
	baseline: 'Voyage';
	load: 'unqlite tests'.
```

### Voyage-Arango (preview)
*Note: This backend has been deprecated and it will not be maintained anymore*

```Smalltalk
Metacello new 
	repository: 'github://pharo-nosql/voyage/mc';
	baseline: 'Voyage';
	load: 'arango tests'.
```

Documentation
-------------
### Pharo for the Enterprise book

Voyage is part of the upcoming "Pharo for the Enterprise 2" book, and Johan Fabry (along with Damien Cassou) has written a nice chapter on it: [HTML](https://ci.inria.fr/pharo-contribution/job/EnterprisePharoBook/lastSuccessfulBuild/artifact/book-result/Voyage/Voyage.html) / [PDF](https://ci.inria.fr/pharo-contribution/job/EnterprisePharoBook/lastSuccessfulBuild/artifact/book-result/Voyage/Voyage.pdf)
