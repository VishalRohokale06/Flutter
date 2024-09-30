import "dart:io";

void main(){

int row = int.parse(stdin.readLineSync()!);

for(int i=row;i>0;i--){
int num = i;
for(int j=1;j<=row;j++){
stdout.write("$num ");
num+=row;
}
print("");
}
}

