I'm  a proxy for objects retrieved lazily from a mongo database. 
I keep enough information to reconstruct correct object when needed. 

On non-spur VM's, I am in general really slow due to using become for reconstruction, (< 100 objects per second), but a fast path exist for objects of a fixed layout with more than 2 slots.

In other words, if proxy conversion shows up in a profile for objects with 2 or less slots, a dirty workaround untill Spur is to add dummy instvars.
