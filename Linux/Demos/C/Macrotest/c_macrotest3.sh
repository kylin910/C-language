gcc -E src/macrotest3.c -o debug/temp/macrotest3.i 
gcc -S debug/temp/macrotest3.i -o debug/temp/macrotest3.s
gcc -g -c debug/temp/macrotest3.s -o debug/temp/macrotest3.o 
gcc debug/temp/macrotest3.o -o debug/bin/macrotest3
