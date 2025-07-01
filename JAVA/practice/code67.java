class Parent{
        protected Object fun(){
                return new Object();
        }
}

class Child extends Parent{
	protected String fun(){
		return new String("Vishal");
	}
	 public static void main(String[] args){
                Parent obj = new Child();
                System.out.println(obj.fun());
        }
}

class Client{
	public static void main(String[] args){
		Parent obj = new Child();
		System.out.println(obj.fun());
	}
}
