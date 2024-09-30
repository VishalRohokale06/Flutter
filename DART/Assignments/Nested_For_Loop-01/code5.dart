import "dart:io";

void main(){
int row=int.parse(stdin.readLineSync()!);

for(int i=0;i<row;i++){
int num=i+1;
for(int j=0;j<=i;j++){
if(i%2==0){
   if(j%2==0){
           int val=num*num;
            stdout.write("$val ");
   }else{
           int  val=num*num*num;
             stdout.write("$val ");     
}
}else{
   if(j%2==1){
            int val=num*num;
            stdout.write("$val ");                                                             }else{
            int val=num*num*num;
             stdout.write("$val ");
}
}
num++;
}
print("");
}
}
