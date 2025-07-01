class Demo{
	int fun(int x){
		System.out.println("int-float");
		return 10;
	}
	void fun(float x){
		System.out.println("float-int");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		//obj.fun(10);
	}
}
