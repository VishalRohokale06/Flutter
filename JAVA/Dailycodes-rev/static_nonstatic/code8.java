class Demo{
	static int x = 10;
	void fun(){
		System.out.println(x);
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		System.out.println(Demo.x);
	}
}
