I'm an abstract Voyage repository. I define common behavior for all kind of repositories, and add some cool functionality. 

To install a repository as image mode, you need to execute: 

aRepository enableSingleton.

VORepository setRepository: aRepository.

You can change container strategies (if you want something different than just a singleton), you can execute: 

VORepository setRepositoryContainer: aRepositoryContainer