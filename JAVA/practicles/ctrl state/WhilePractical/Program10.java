class WhileDemo{
        public static void main(String[]args){

                
                long num=9307922405l;
		int sum=0;

                 while (num>0) {
                         long digit=num%10l;

                      

                        num /= 10;
			sum+=digit;
		
                              

                        }
		  

		 System.out.println(sum +" ");

        }
}
