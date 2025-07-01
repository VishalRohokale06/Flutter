class NumFor{

        public static void main(String[]args){
                int number=301071;
		int numval=0;

		int temp=number;
                while(temp!=0){
                        numval=numval*10+(temp%10);
			temp/=10;

                        
                          System.out.print(temp +" ");
                          System.out.print(numval +" ");
                          System.out.println(number +" ");

                        }
                
        }
}
