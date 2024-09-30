import "dart:io";

void main(){

int num = int.parse(stdin.readLineSync()!);
int a=0;
int b=1;
int c=1;

for(int i=0;i<num;i++){

print(a);
a=b;
b=c;
c=a+b;

}
}
