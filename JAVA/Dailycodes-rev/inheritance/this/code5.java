class Demo{
	int x=10;
	Demo(){
		this(20);
		System.out.println("1");
		System.out.println(x);
	}
	Demo(int x){
		System.out.println("2");
		System.out.println(x);
	}
	public static void main(String[] args){
		Demo obj = new Demo();
	}
}
