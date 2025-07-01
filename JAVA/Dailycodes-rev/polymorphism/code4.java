class Parent{
	void marry(){
		System.out.println("Alia Bhat");
	}
}
class Child extends Parent{
	void marry(){
		System.out.println("Shradha Kapoor");
	}
}

class Client{
	public static void main(String[] args){
		Parent p = new Child();
		p.marry();
	}
}
