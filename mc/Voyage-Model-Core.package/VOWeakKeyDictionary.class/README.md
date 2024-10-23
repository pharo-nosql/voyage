This is a weak key dictionaty to be used on `VOCache`.
Its purpose is to ensure both dictionaries: objects and reversedObjects are in sync. 
For this, I keep the `reversed` dictionary and when the association are mourned, I ensure it will also remove its reversed equivallent, preventing the dictionaries to be out of sync. 