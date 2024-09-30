import 'dart:io';

void main(){

int row = int.parse(stdin.readLineSync()!);
int num = 1;

for(int i=0;i<row;i++){
for(int j=1;j<=i+1;j++){
stdout.write("$num ");
num+=row;
}
print("");
}
}
