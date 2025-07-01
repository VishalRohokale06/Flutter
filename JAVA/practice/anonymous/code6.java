interface Parent{
	void fun();
}

class Demo implements Parent{
	 public void fun(){
		 System.out.println("In fun");
	 }
	public static void main(String[] args){
		Parent obj = ()->{
			System.out.println("In fun-Demo");
		};
		obj.fun();
	}
}
