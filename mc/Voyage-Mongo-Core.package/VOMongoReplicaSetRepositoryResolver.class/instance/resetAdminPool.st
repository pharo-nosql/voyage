accessing
resetAdminPool
	adminPool := VOMongoSessionPool 
		host: repository host 
		port: repository port 
		database: 'admin'
		username: repository username
		password: repository password.
	adminPool size: repository poolSize.