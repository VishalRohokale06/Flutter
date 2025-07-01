class Demo{
	public static void main(String[] args){
		char ch = 'A';
		for(int i=1;i<=10;i++){
			if(i%2==0){
				System.out.println(ch+32);
			}
			else{
				System.out.println(ch);
			}
			ch++;
		}
	}
}
