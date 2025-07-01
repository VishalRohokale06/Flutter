class Demo{
	void fun(int x){
		System.out.println("In fun-int");
	}
	void fun(char x){
		System.out.println("In fun-char");
	}
	void fun(float x){
		System.out.println("In fun-float");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		obj.fun('2');
	}
}
