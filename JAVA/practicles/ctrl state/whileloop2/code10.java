class Demo{
        public static void main(String[] args){
                int num=9367924;
                int sum=0;
		int product=1;
                while(num>0){
                int digit=num%10;
                if(digit%2==1){
                       sum=sum+digit;
                }
		else{
	
		 product=product*digit;
		}
                num/=10;
        }
                System.out.println(sum);
                System.out.println(product);
        }

}
