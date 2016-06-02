running
manualSetUpForTests
	"
	-------------------------------------------------
	IMPORTANT: How to execute this test suite
	-------------------------------------------------

	1. Define two environment variables. I add these two lines to my `.profile` file at home (linux)

		baseRepositoryPath=/home/tinchodias/dev/voyage/testreplicationdb/; export baseRepositoryPath
		replicaSetName=demo; export replicaSetName
	
	
	2. Run first time:
	
		cd $VOYAGE_GIT_REPO/scripts
		./rs-setup.sh

	3. After any system reboot:
	
		cd $VOYAGE_GIT_REPO/scripts
		./rs-serve.sh  
	
	"