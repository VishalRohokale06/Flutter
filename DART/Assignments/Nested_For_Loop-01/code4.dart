import "dart:io";

void main(){
int row=int.parse(stdin.readLineSync()!);
int num = (row*(row+1))~/2;
for(int i=0;i<row;i++){
for(int j=0;j<=i;j++){
stdout.write("$num ");
num--;
}
print("");
num++;
}
}
