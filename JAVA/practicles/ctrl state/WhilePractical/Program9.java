class WhileDemo{
        public static void main(String[]args){

                int evencount=0;
		int oddcount=0;
                int num=214367689;


	

                 while (num != 0) {
			 int digit=num%10;
			 if(digit%2==0){
				 evencount++;
			 }
			 else{
				 oddcount++;
			 }

                        num /= 10;
		

                            

                         }


        System.out.println("Count of evendigits = " + evencount);
        System.out.println("Count of odddigits = " + oddcount);

        }
}
