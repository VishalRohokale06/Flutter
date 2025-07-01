class Demo{
	public static void main(String[] args){
		int num=2569185;
		while(num>0){
			int digit=num%10;
			if(digit%2==0){
				System.out.println(digit+" ");
			}
			else{
				System.out.println();
			}
			num/=10;
	}
}
}

