# both methods have the same return value. However, the first implementation returns a reference to the object passed in as the buffer argument, while the second returns a new object. Furthermore, the first implementation mutates the argument given by the buffer argument, while the second does not mutate its input_array argument. That is, the code that calls rolling_buffer1 will see a modified array after the method returns, while the code that calls rolling_buffer2 will not see any changes in the array.



