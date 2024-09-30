import "dart:io";

void main(){
int row = int.parse(stdin.readLineSync()!);
for(int i=0;i<row;i++){
int num=1;
int num2=row;
for(int j=0;j<row;j++){
if(i%2==0){
stdout.write("$num  ");
num++;
}else{
stdout.write("$num2  ");
num2--;
}
}
print("");
}
}
