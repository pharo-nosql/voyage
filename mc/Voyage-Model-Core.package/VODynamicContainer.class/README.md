I am a dynamic container. 
I answer repositories that can be accessed when using a the dynamic variable VOCurrentRepository. 
WARNING: For me to work, you need to configure me as the repositoryContainer for VORepository:

VORepository repositoryContainer: VODynamicContainer new.

Example: 
------------
using a seaside filter, you can do: 

handleFiltered: aRequestContext
    VOCurrentRepository 
        value: self obtainSessionRepository
        during: [  self next handleFiltered:  aRequestContext].