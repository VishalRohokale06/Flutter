class WhileDemo{
        public static void main(String[]args){

                int i=1;
		
		int num=1;
                char ch='A';

                while(i<=4){
			int j=1;
			while(j<=4){
				
				System.out.print(num+" ");
				num+=2;
				j++;
			}
			

                        System.out.println();
			i++;
                       
                }
        }
}
