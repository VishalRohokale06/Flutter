import "dart:io";

void main(){
int row = int.parse(stdin.readLineSync()!);
int num = 1;
for(int i=0;i<row;i++){
int num = i+1;
for(int j=0;j<row;j++){
stdout.write("$num  ");
num++;
}
print("");
}
}
