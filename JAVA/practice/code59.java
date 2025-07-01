class Demo{
	Demo(){
		System.out.println("NO ARG");
	}
	Demo(int x){
		System.out.println("Para");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		Demo obj1 = new Demo(10);
//		Demo(obj1,10);

	}
}
