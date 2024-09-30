import 'dart:io';

void main(){

int row = int.parse(stdin.readLineSync()!);
int num=1;
int temp;
int prev=0;

for(int i=1;i<=row;i++){
for(int j=1;j<=i;j++){
stdout.write("$num ");
temp=num;
num+=prev;
prev=temp;
}
print("");
}
}
