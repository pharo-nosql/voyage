This description can be used to create "shadow" fields.
For example, it can be used for normalizing data before inserting in the DB.

See 
VOMongoSerializerTest>testShadowSerialize 
and
VOTestPilot class>descriptionShadowKeywords 
for an example.

It can be used for normalizing data before inserting in the DB.

It can be used to solve the problem described in http://www.coffeepowered.net/2011/07/12/mongodb-warts-and-wobbles/ :
"
All data in MongoDB is case-sensitive. This is in stark contrast to something like MySQL, where indexed text columns are case-insensitive. 

So, if you have a "username" field, "Chris" and "chris" could be two different users, and a user trying to log in as "chris" by tying "CHRIS" into the username field would fail their login attempt. 

You can solve this by either a) forcing a consistent casing (lower or upper) on the column, or b) by keeping a second shadow column with normalized (and indexed) data.

 So, for example, I might need to keep two columns, username and shadow_username, then index and do all queries against shadow_username, but display username. 

This isn't a huge wart, but it's going to bite you in the ass if you aren't used to it.
"