# BrainLuck
 A Brainfuck interpreter written in Lua


# THE LANGUAGE
The language 'brainfuck' knows the following commands:

 Cmd  Effect                                 Equivalent in C
 ---  ------                                 ---------------
 +    Increases element under pointer        array[p]++;
 -    Decrases element under pointer         array[p]--;
 >    Increases pointer                      p++;
 <    Decreases pointer                      p--;
 [    Starts loop, counter under pointer     while(array[p]) {
 ]    Indicates end of loop                  }
 .    Outputs ASCII code under pointer       putchar(array[p]);
 ,    Reads char and stores ASCII under ptr  array[p]=getchar();

All other characters are ignored. The 30000 array elements and p are being
initialized to zero at the beginning.  Now while this seems to be a pretty
useless language, it can be proven that it can compute every solvable
mathematical problem (if we ignore the array size limit and the executable
size limit).
