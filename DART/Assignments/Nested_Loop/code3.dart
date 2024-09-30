import "dart:io";

void main(){

int row = int.parse(stdin.readLineSync()!);
int num = 10;

for(int i=1;i<=row;i++){
for(int j=1;j<=row;j++){
if(num<100){
stdout.write("${num} ");
num+=10;
}
else{
stdout.write("${num} ");
num+=1;
}
}
print("");
}
}

