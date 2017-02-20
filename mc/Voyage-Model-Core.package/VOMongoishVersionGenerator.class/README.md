I generate versions in a "mongoish" way:  https://docs.mongodb.com/manual/reference/method/ObjectId/

I calculate versions as this: 

- a 4-byte value representing the seconds since the Unix epoch,
- a 3-byte machine identifier,
- a 2-byte process id, and
- a 3-byte counter, starting with a random value.
