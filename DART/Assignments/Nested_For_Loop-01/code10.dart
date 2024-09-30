import "dart:io";

void main(){
int row=int.parse(stdin.readLineSync()!);

int num = 1;
for(int i=1;i<=row;i++){
int val=row-i+1;
for(int j=1;j<=i;j++){
if(j%2==1){
stdout.write("$val ");
val++;
}else{
stdout.write("$num ");
num++;
}
}
print("");
}
}
