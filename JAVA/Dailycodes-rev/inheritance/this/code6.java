class Demo{
	int x = 10;

	Demo(){
		this(10,20);
			System.out.println("0");
	}
	Demo(int x){
		this();
		System.out.println("1");
	}
	Demo(int x,int y){
		System.out.println("2");
	}
	public static void main(String[] args){
		Demo obj = new Demo(10);
	}
}
