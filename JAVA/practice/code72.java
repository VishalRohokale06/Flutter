class Demo{
	Demo(){
		System.out.println("Demo Const");
	}
	int x=initializeX();
	int initializeX(){
		System.out.println("X");
		return 10;
	}
	{
		System.out.println("Instance block");
	}
	public static void main(String[] args){
		Demo onj=new Demo();
	}
}
