class Demo{
	public static void main(String[] args){
		int num=1;
		char ch='A';
		for(int i=1;i<=3;i++){
			for(int j=1;j<=3;j++){
				if(j%2==0){
					System.out.print(ch +" ");
				}
				else{
					System.out.print(num +" ");
				}
				ch++;
				num++;
			}
			System.out.println();
		}

	}
}
