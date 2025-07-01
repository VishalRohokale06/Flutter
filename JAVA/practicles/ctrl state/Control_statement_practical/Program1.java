class SwitchDemo{
	public static void main(String[]args){

		int data=100;
		if(data<500){
			switch(data){
				case 100:
					System.out.println("1 Hundred");
					break;
				
				 case 200:
                                        System.out.println("2 Hundred");
                                        break;

				 case 300:
                                        System.out.println("3 Hundred");
                                        break;

				 case 400:
                                        System.out.println("4 Hundred");
                                        break;

			}
		}else{
			if(data>500){


			switch(data){

				 case 600:
                                        System.out.println("6 Hundred");
                                        break;

				 case 700:
                                        System.out.println("7 Hundred");
                                        break;
				 case 800:
                                        System.out.println("8 Hundred");
                                        break;

				 case 900:
                                        System.out.println("9 Hundred");
                                        break;
				 case 1000:
                                        System.out.println(" thousand");
                                        break;
			}
			}else{
				System.out.println("Coder:");

			}
	}
	}


}
