import "dart:io";

void main(){
int row=int.parse(stdin.readLineSync()!);

for(int i=1;i<=row;i++){
int num = i;
for(int j=1;j<=(row-i+1);j++){
stdout.write("$num ");
num++;
}
print("");
}
}
