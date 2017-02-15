I'm a dynamic variable to handle thread local requests of repositories. 
I'm used in conjunction with VODynamicContainer.

Example: 
------------
using a seaside filter, you can do: 

handleFiltered: aRequestContext
    VOCurrentRepository 
        value: self obtainSessionRepository
        during: [  self next handleFiltered:  aRequestContext].