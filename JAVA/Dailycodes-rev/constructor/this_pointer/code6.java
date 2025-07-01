class Demo{
	Demo(){
		this(10);
		System.out.println("In 1Demo");
	}
	Demo(int x){
		System.out.println("IN Demo2");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
	}
}
