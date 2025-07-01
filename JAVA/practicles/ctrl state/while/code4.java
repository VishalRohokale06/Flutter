class Demo{
        public static void main(String[] args){
                int num=1;
		char ch='A';
                while(num<=6){
			if(num%2==0){
                        System.out.println(num +" ");
			}
			else{
				System.out.println(ch +" ");
			}
                        ch++;
                        num++;
                }
        }
}
