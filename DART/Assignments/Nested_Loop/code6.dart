import "dart:io";

void main(){

        print("Enter the row:");
        int row= int.parse(stdin.readLineSync()!);

        int num1=12;

        for(int i=1;i<=row;i++){
                for(int j=1;j<=row;j++){

                        if(i==1 && j==3){
                                stdout.write("${num1-4} \t");
                        }else{
                        stdout.write("$num1 \t");
                                num1=num1+6;
                        }
                }
		print("");
}
}
