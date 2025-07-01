class Demo{
	int var1 = 10;
	public static void main(String[] args){
		Demo obj = new Demo();
		System.out.println(++obj.var1);
	}
}

class C2W{
	public static void main(String[] args){
		System.out.println("Hello World");
			Demo obj = new Demo();
			System.out.println(++obj.var1);
	}
}
