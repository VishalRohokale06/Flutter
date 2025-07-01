//METHODS

class Demo{
	int fun(){
		int x = 10;
		System.out.println("In fun");
		return x;
	}

	public static void main(String[] args){
		Demo obj = new Demo();
		System.out.println(obj.fun());
	}
}
