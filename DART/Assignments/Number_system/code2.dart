import "dart:io";

void main(){

int num = int.parse(stdin.readLineSync()!);
int flag = 0;

if(num<2){
flag=1;
}
else{
for(int i=2;i<=num~/2;i++){
if(num%i==0){
flag=1;
break;
}
}
}
if(flag==0){
print("$num is prime number");
}
else{
print("$num is not prime number");
}
}
