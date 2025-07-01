class Demo{
	public static void main(String[] args){
		char ch='A';
		int num =9;
		for(int i=1;i<=9;i++){
			if(i%2==1){
				System.out.print(num+ " ");
				num--;
			}
			else{
				System.out.print((char)i+64 + " ");
			}
			ch++;
		}
	}
}
