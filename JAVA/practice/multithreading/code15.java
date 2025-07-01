class Parent{
	public void fun(){
		//Thread.sleep(2000);
		System.out.println("In funParent");
	}
}

class Child extends Parent{
	public void fun()throws InterruptedException{
		Thread.sleep(2000);
		System.out.println("In funCHild");
	}

	public static void main(String[] args)throws InterruptedException{
		Parent obj = new Child();
		obj.fun();
	}
}

