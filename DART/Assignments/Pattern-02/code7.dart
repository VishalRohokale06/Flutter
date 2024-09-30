import "dart:io";

void main(){
int row = int.parse(stdin.readLineSync()!);
int num = 1;

for(int i=0;i<row;i++){
for(int j=0;j<row;j++){
int sqr = num*num;
stdout.write("$sqr ");
num++;
}
print("");
}
}

