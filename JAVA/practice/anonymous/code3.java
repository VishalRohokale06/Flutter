class Parent{
	void marry(){
		System.out.println("Alia");
	}
}
class Child extends Parent{
        void marry(){
                System.out.println("Shreleela");
        }
}
class Demo {
	void fun(Parent obj){
		obj.marry();
	}
	void fun(Child obj){
                obj.marry();
        }
}
class Outer{
	public static void main(String[] a){
		Demo obj = new Demo();
		obj.fun(new Parent(){
			void marry(){
				System.out.println("Sharadha");
			}
		});
	}
}
