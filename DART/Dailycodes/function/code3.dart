//WITH PARAMETERS AND ONE RETURN TYPE

import "dart:io";

void main(){
add();
}

void add(){
int num1 = int.parse(stdin.readLineSync()!);
int num2 = int.parse(stdin.readLineSync()!);

return num1+num2;
}
