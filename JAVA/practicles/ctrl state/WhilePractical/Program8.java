class WhileDemo{
        public static void main(String[]args){

                
                int num=216985;


                 while (num>0) {
                         int digit=num%10;
			 if(digit%2==0){

                         System.out.print(" ");
			 }
			 else{
                         System.out.print(digit+" ");
			 }

                        num /= 10;

                                

                        }


        }
}
