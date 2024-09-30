import "dart:io";

void main(){

String num = stdin.readLineSync()!;
int flag = 0;
int i=0;

if(num[0]!="0"){
for (i=1;i<num.length;i++){
if (num[i]=="0"){
print("Duck number");
break;
}
}
if (i>=num.length){
print("not duck");
}
}
else{
print("not duck");
}
}
