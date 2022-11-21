# Q-SYS Module for Collections
This Q-SYS module adds 3 types of collections to the Q-SYS scripting environment: Queue, Stack, and Dictionary. "Queue", "Stack, and "Dictionary" become _reserved_ by adding this module. The are used in the creation of a new object. 

# Install
Minimum Software Version Required: Q-SYS Designer v9.5.0

1. Navigate to %DOCS%/QSC/Q-Sys Designer/Modules
2. Add the _Collections_ directory into the _Modules_ directory
3. In Q-SYS Designer, Tools -> Show Design Resources
4. Install _Collections_

Read more about [Design Resources](https://q-syshelp.qsc.com/Index.htm#Schematic_Library/Design_Resources.htm)

# Usage
```lua
require("Collections")

q = Queue:New()
s = Stack:New()
d = Dictionary:New()

q:Push(1)
q:Push(2)
print(q:Pop()) 		-- Outputs "1"

s:Push(1)
s:Push(2)
print(s:Pop())    	-- Outputs "2"

d:Add("1", 1)
d:Add("2", 2)
print(d["2"])     	-- Outputs "2"

```


### Queue
| Syntax      							| Description 																	|
| --------------------------------------| ------------------------------------------------------------------------------|
| :New()       							| Returns a new Queue object       												|
| :<zero-width space>Push(value)  		| Add a value to the end of the Queue        									|
| :<zero-width space>Pop()       		| Return a value removed from the front of the queue     						|
| :<zero-width space>PushFirst(value)	| Add a value at the head of the Queue       									|
| :IndexOf(value)						| Return the index within the Queue of the value, or nil    					|
| :Clear()  							| Remove all data from the Queue        										|
| :IsEmpty()      						| Returns false if the Queue contains data, true otherwise  					|
| .first  								| Index of the first data in the Queue (oldest)        							|
| .last  								| Index of the last data in the Queue (newest)        							|

### Stack
| Syntax      							| Description 																	|
| --------------------------------------| ------------------------------------------------------------------------------|
| :New()       							| Returns a new Stack object       												|
| :<zero-width space>Push(value)  		| Add a value to the top of the Stack        									|
| :<zero-width space>Pop()       		| Return a value removed from the top of the Stack	     						|
| :IndexOf(value)						| Return the index within the Stack of the value, or nil    					|
| :Clear()  							| Remove all data from the Stack        										|
| :IsEmpty()      						| Returns false if the Stack contains data, true otherwise  					|
| .top  								| Index of the top item of the Stack        									|

### Dictionary
| Syntax      							| Description 																	|
| --------------------------------------| ------------------------------------------------------------------------------|
| :New()       							| Returns a new Dictionary object  												|
| :Add(key,value)   				  	| Add a new value to the Dictionary with the specified key						|
| :FindKey(value)      					| Returns the key for the specified value, or nil	     						|
| :ContainsKey(key) 					| Returns true if the Dictionary contains the specified key, false otherwise    |
| :ContainsValue(value)  				| Returns true if the Dictionary contains the specified value, false otherwise	|
| :Clear()  							| Remove all data from the Dictionary       									|
| :IsEmpty()      						| Returns false if the Dictionary contains data, true otherwise 		 		|

