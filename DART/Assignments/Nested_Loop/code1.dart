import "dart:io";

void main(){

int row = int.parse(stdin.readLineSync()!);
int sval = 1;
int oval = 2*row-1;

for(int i=row;i>0;i--){
int num=i;
for(int j=1;j<=row;j++){
stdout.write("$num  ");
if(j%2==1){
num += sval;
}else{
num += oval;
}
}
print("");
oval-=2;
sval+=2;
}
}
