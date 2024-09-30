import "dart:io";

void main(){
int row=int.parse(stdin.readLineSync()!);
int num=1;
for(int i=1;i<=row+1;i++){
for(int j=1;j<=i;j++){
stdout.write("$num ");
num++;
}
print("");
num++;
}
}
