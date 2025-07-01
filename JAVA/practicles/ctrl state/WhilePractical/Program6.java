class WhileDemo{
        public static void main(String[]args){

                int i=1;
                int num=9307;
              

                 while (i<=4) {
			 int digit=num%10;
			 System.out.println(digit+" ");

            		num /= 10;

            			i++;   

       			}		

               
        }
}
