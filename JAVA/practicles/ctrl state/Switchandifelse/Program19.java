class Switchandifelse{
        public static void main(String[]args){

                int marathi=37;
                int english=46;
                int hindi=38;
                int science=55;
                int math=39;
                int total=marathi+english+hindi+science+math;
                int percent=(marathi+english+hindi+science+math)/5;



                if (marathi<35|| hindi<35|| english<35|| math<35|| science<35){      
			System.out.println(" you failed the exam");

                        }

                else{   
		       	System.out.println(total);
                         System.out.println(percent);


                    switch ((int) percent / 10) {
	            	case 9:
        	        System.out.println("Grade: First Class with Distinction");
                		break;
            		case 8:
			case 7:
                	System.out.println("Grade: First Class");
               	 		break;
            		case 6:
                	System.out.println("Grade: Second Class");
                		break;
            		default:
                		System.out.println("Grade: Pass");
        }
                }

        }
}

