class C2W{
	C2W(C2W obj){
	this(10);
	System.out.println(obj);
	System.out.println("In C2W");
	}

	C2W(int x){
		System.out.println("In C2W"+x);
	}

	public String toString(){
		return "This is a C2W object.";
	}

	public static void main(String[] args){
		C2W obj = new C2W(1);
		C2W obj1 = new C2W(obj);
		System.out.println(obj);
		System.out.println(obj1);
	}
}
