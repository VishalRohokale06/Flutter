class Switchandifelse{
        public static void main(String[]args){

                int num1=5007;
                int num2=-17;
               

                if (num1 > 0 && num2 > 0) {
            		int result = num1 * num2;

            		switch (result % 2) {
                		case 0:
                    	System.out.println("Result of multiplication: " + result + " is an even number.");
                    		break;


                		case 1:
                		case -1:
                    	System.out.println("Result of multiplication: " + result + " is an odd number.");
                   		 break;


                	default:
                    		System.out.println("Invalid result");
           
		       
			}
        } else {
            System.out.println("Sorry, negative numbers not allowed. Program terminated.");
        }
}
        }

