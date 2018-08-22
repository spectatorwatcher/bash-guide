a=$1
b=$2
c=_
d=$3
e=$4
for i in `ls`; do if [ -d $i ]; then echo $i; cd $i; for j in `ls`; do mv $j $a$b$c$d.jpg; ((d=d+1)); done; ((b=b+1)); cd ..; fi; done
for i in `ls`; do if [ -d $i ]; then echo $i; cd $i; mv * ../../$e; cd ..; fi; done
