class NrstedFor{
        public static void main(String[]args){

                int row=5;
		int num=1;
                for(int i=1;i<=row;i++){
                        
                        char ch ='A';
			ch+=(row-1);

                        for(int j=1;j<=row;j++){

                                System.out.print(ch+""+num+"  ");
				num++;




                        }

                        System.out.println();

                }
        }
}
