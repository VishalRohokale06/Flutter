import "dart:io";

void main(){

int row = int.parse(stdin.readLineSync()!);

for(int i=1;i<=row;i++){
for(int sp=1;sp<=row-i;sp++){
stdout.write("\t");
}
int num=1;
for(int j=1;j<=i*2-1;j++){
if(i>=j){
stdout.write("$num\t");
num++;
}else{
num--;
stdout.write("${num-1}\t");
}
}
print("");
}
}
