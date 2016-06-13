executing
executePostLoad: anObject
    self postLoad ifNotNil: [ self postLoad value: anObject ].
    self children do: [ :each |
        each postLoad ifNotNil: [ each postLoad value: anObject ] ]