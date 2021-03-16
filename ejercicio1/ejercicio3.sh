 #!/bin/bash

mkdir foo
cd foo
mkdir dummy
mkdir empty
cd dummy
echo  $1 >> file1.txt
cd ..
cd empty 
touch file2.txt
