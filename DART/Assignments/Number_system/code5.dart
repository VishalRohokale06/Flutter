import "dart:io";

void main(){

int num = int.parse(stdin.readLineSync()!);
int temp=num;
int rev = 0;

while(temp>0){
int digit=temp%10;
rev = rev*10 + digit;
temp=temp~/10;
}
if(num==rev){
print("$num is Palindrome number");
}else{
print("$rev is not Palindrome number");
}
}
