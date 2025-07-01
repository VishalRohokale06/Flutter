class Switchandifelse{
        public static void main(String[]args){

                int x=-89;
		switch(x%2){

			case 0:
                                System.out.println(x +" is an even number");
				break;

                        
			case 1:
			case -1:
                                System.out.println(x +" is an odd number");
				break;

                        
			default:
                                System.out.println(x +" is an invalid input");
				break;
                        }
        }
}
