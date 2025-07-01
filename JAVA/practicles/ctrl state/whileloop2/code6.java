class Demo{
        public static void main(String[] args){
                int num=234;	
		int product=1;	
                while(num>0){
   			int digit=num%10;	
			product=product*digit;
                num/=10;
		}
		System.out.println(product);
        }
        
}
