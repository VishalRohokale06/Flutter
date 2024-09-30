import "dart:io";

void main(){

int num = int.parse(stdin.readLineSync()!);
int temp = num;
int sum=0;

while(temp>0){
int rev = temp%10;
sum+=rev;
temp=temp~/10;
}
if(num%sum==0){
print("$num is harshad number");
}else{
print("$num is not harshad number");
}
}
