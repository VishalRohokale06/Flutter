class Demo{
        public static void main(String[] args){
		int num=9307;
                while(num>0){
			int digit=num%10;
                        System.out.println(digit +" ");
                        num/=10;
                }
        }
}
