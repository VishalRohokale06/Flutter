import "dart:io";

void main(){

int row = int.parse(stdin.readLineSync()!);
int num = 1;
int temp = num;
int prev =0 ;

for(int i=1;i<=row;i++){
for(int sp=1;sp<=row-i;sp++){
stdout.write("     ");
}
for(int j=1;j<=i;j++){
stdout.write("$num  ");
prev=num;
temp+=2;
num=prev+temp;
}
print(" ");
}
}
