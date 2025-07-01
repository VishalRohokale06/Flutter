class Demo{
	void fun(){
		System.out.println("In Demo fun");
	}
}
class Client{
	public static void main(String[] args){
		Demo obj = new Demo(){
		void fun(){
			System.out.println("In fun");
		}
		};
		obj.fun();
	}
}
