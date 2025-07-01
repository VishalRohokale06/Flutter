class Switchandifelse{
        public static void main(String[]args){

                int x=5007;
		int y=-17;
		int z=x*y;

                        if(x>0&&y>0){
                                System.out.println(" both numbers are positive");
				//int z=x*y;
				if(z%2==0){
					System.out.println(z+" ans is even");
				}
				else{
					System.out.println(z+" ans is odd");}
			}
			


                        else if(x==0||y==0){

                                System.out.println(z+" ans is zero");
                        }
			else if(x<0||y<0){
				System.out.println(" ans is negative");

				 if(z%2==0){
                                        System.out.println(z+" ans is even");
                                }
                                else{
                                        System.out.println(z+" ans is odd");}
			}
        }
}
