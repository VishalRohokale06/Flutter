import "dart:io";

void main(){

int retVal = add();
print("Add = $retVal");
}

int add(){

int num1 = int.parse(stdin.readLineSync()!);
int num2 = int.parse(stdin.readLineSync()!);

return num1+num2;
}
