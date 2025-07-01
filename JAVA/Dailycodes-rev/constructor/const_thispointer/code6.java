class Demo{
	Demo(int x){
		System.out.println("In Constructor");
		System.out.println(x);
	}
	public static void main(String[] args){
		Demo obj = new Demo(10);
	}
}
