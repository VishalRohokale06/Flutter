class student{
	public static void main(String[] args){
		float percent = 50f;

		if(percent>=80){
			System.out.println("Passed : first class with distinction");
		}
		else if(percent<80 && percent>=65){
			System.out.println("Passed : first class");
		}
		else if(percent<65 && percent>=50){
			 System.out.println("Passed : second class ");
		}
		else if(percent<50 && percent>=35){
			 System.out.println("Passed : pass without class");
		}
		else{
			 System.out.println("Fail");
		}
		
	}
}

