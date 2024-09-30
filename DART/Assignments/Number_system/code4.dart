import "dart:io";
import "dart:math";

void main(){

int num = int.parse(stdin.readLineSync()!);
int temp=num;
int count=0;
int sum=0;

while(temp>0){
count++;
temp=temp~/10;
}
temp=num;
while(temp>0){
int rev = temp%10;
sum+= pow(rev, count)!.toInt();
temp~/=10;
}

if(num==sum){
print("$num is an Armstrong Number");
}else{
print("$num is not an Armstrong Number");
}
}
