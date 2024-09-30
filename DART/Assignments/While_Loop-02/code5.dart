import 'dart:io';

void main(){

int number=int.parse(stdin.readLineSync()!);
int i=number;
int fact=1;

while(i!=0){
fact=fact*i;
i--;
}
print("factorial $number is $fact");
}
