# Queue
* :New()                Returns a new Queue object
* :Push(value)          Add a value to the end of the Queue
* :Pop()                Return a value removed from the front of the queue
* :PushFirst(value)     Add a value at the head of the Queue
* :IndexOf(value)       Return the index within the Queue of the value, or nil
* :Clear()              Remove all data from the Queue
* :IsEmpty()            Returns false if the Queue contains data, true otherwise
* .first                Index of the first data in the Queue (oldest)
* .last                 Index of the last data in the Queue (newest)

# Stack
* :New()                Returns a new Stack object
* :Push(value)          Add a value to the top of the Stack
* :Pop()                Return a value removed from the top of the Stack
* :IndexOf(value)       Return the index within the Stack of the value, or nil
* :Clear()              Remove all data from the Stack
* :IsEmpty()            Returns false if the Stack contains data, true otherwise
* .top                  Index of the top item of the Stack

# Dictionary
* :New()                Returns a new Dictionary object
* :Add(key,val)         Add a new value to the Dictiontary with the specified key
* :FindKey(value)       Returns the key for the specified value, or nil
* :ContainsKey(key)     Returns true if the Dictionary contains the specified key, false otherwise
* :ContainsValue(value) Returns true if the Dictionary contains the specified value, false otherwise
* :Clear()              Remove all data from the Dictionary
* :IsEmpty()            Returns false if the Dictionary contains data, true otherwise