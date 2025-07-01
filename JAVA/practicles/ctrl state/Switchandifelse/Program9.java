class Switchandifelse{
        public static void main(String[]args){

                int marathi=37;
		int english=46;
		int hindi=38;
		int science=55;
		int math=39;
		int total=marathi+english+hindi+science+math;
		int percent=(marathi+english+hindi+science+math)/5;
		
			
		
                if (marathi<35|| hindi<35|| english<35|| math<35|| science<35){                                System.out.println(" you failed the exam");
                        }

		else{    System.out.println(total);
                	 System.out.println(percent);
		
			
			if(percent>=70){
                                System.out.println(percent+" first class with distinction ");

                        }
                        else if(percent>=60){
                                System.out.println(" first class");

                        }

                        else if(percent>=50){
                                System.out.println(" second class");
                        }


                         else if(percent>=35){
                                System.out.println(" Third class");
                        }

			else{
				 System.out.println("you are not eligible for this course please take another your type of course");
			}
		}

	}
}


                        
