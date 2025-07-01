class Demo{
	public static void main(String[] args){
		int num=2569185;
		while(num>0){
		int digit=num%10;
		if(digit%3!=0){
			System.out.println("digits not divisble by 3 are :"+digit);
		}
		
		num/=10;
	}
	}
}

