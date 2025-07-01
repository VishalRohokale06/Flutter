class Parent extends Object{
	Parent(){            
		System.out.println("Parent Const");
		System.out.println(this);
	}
}
class Child extends Parent{
	Child(){
		System.out.println("Child Const");
	}
	public static void main(String[] args){
		Child obj = new Child();
		System.out.println(obj);
	}
}
