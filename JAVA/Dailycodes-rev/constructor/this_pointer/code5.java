class Demo{
	Demo(int x){
		System.out.println("In constaructor");
		System.out.println(x);
		System.out.println(this);
	}

	public static void main(String[] args){
		Demo obj = new Demo(20);
		System.out.println(obj);
	}
}

