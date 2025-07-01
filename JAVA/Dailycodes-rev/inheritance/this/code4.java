class Demo{
	Demo(){
		this(10);
		System.out.println("1");
	}
	Demo(int x){
		this(10,20);
		System.out.println("2");
	}
	Demo(int x,int y){
		System.out.println("3");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
	}
}
