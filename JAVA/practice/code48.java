class Demo{
	static int x = initializex();
	static{
		System.out.println("Static Block");
	}
	static int initializex(){
		System.out.println("X");
		return 10;
	}
	public static void main(String[] args){
		System.out.println("Main Method");
		System.out.println(x);
	}
}
