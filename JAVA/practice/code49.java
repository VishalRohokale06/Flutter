class Demo{
	static void fun(){
		System.out.println("Static fun");
	}
	public static void main(String[] args){
		fun();
		Demo obj = new Demo();
		obj.fun();
		Demo.fun();
	}
}

