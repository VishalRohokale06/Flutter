class number{
	public static void main(String[] args){
		int num = 15;

		if(num%2==0 && num%5==0 && num%10==0){
			System.out.println(num+ " is divisible by 2,5,10");
		}
		else if(num%2==0){
			System.out.println(num+ " is divisible by 2");
		}
		else if(num%5==0){
                        System.out.println(num+ " is divisible by 5");
                }
		else if(num%10==0){
                        System.out.println(num+ " is divisible by 10");
                }
		else{
			System.out.println(num+ " is not divisible by 2,5,10");
		}
	}
}

