class Demo{
	Demo(){
		System.out.println(System.identityHashCode(this));
	}
}
class Child extends Demo{
	Child(){
		System.out.println(System.identityHashCode(this));
	}
	public static void main(String[] args){
		Child obj = new Child();
		System.out.println(System.identityHashCode(obj));
	}
}
