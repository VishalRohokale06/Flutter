class Demo{
	//void fun(byte x){
	void fun(int x){
		System.out.println("In fun");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		obj.fun('A');
	}
}
