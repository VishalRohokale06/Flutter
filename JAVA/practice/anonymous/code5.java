class Parent{
	void fun(){
	System.out.println("In pfun");
	}

}
class Child {
	public static void main(String[] args){
		Parent obj = new Child(){
	       		void fun(){		
		       	System.out.println("In fun-child");
		
			}
		};
		obj.fun();
	}
}
