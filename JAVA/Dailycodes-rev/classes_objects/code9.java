class Demo{
	float run(){
		System.out.println("In run");
		return 10.2f;
	}

	public static void main(String[] args){
		Demo obj = new Demo();
		System.out.println(obj.run());
	}
}
