class Demo{
	public static void main(String[] args){

	        long sum=0;
		long num=9307922405l;
		long temp=num;
		while(num>0){
			long digit=num%10;
			sum=sum+digit;
			num/=10;
		}
		System.out.println("sum of digits in" +temp+ "is" +sum);
		
	}
}
