set up
_manual_set_up_
	"
	------------------------------------------------------------------
	IMPORTANT: Follow this guide to prepare replication tests scenario 
	------------------------------------------------------------------

	Scenario:
	---------
	
		mongo 'A':
			localhost:27031 -> priority 5.0 
				=> primary member in the replica set
		mongo 'B':
			localhost:27032 -> priority 3.0 
				=> secondary member in the replica set, except when A steps down
		mongo 'C':
			localhost:27033 -> priority 0.0
				=> secondary member in the replica set, can't be primary

	Set up:
	-------
	
	1. Define two environment variables:

		baseRepositoryPath=/home/tinchodias/dev/voyage/testreplicationdb/; export baseRepositoryPath
		replicaSetName=demo; export replicaSetName

	Replace `/home/tinchodias/dev/voyage/testreplicationdb/` by any directory to place mongodb files.
	Tip: you can add these two lines to my `.profile` file at home (linux).

	
	2. Run first time:
	
		<VOYAGE_GIT_DIRECTORY>/scripts/rs-setup.sh


	3. Next times:
	
		<VOYAGE_GIT_DIRECTORY>/scripts/rs-serve.sh  
	
	"