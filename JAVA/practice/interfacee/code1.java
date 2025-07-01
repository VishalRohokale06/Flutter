interface Demo{
        void m1();
}

/*class Outer {
        public static void main(String[] args){

                Demo obj = new Demo()
                {
                        public void m1(){
                        System.out.println("In Demo-interf");
                        }
                };
                obj.m1();
        }
}*/

class Outer implements Demo{
	public void m1(){
		System.out.println("In Demo-interf");
         }
	public static void main(String[] args){
		Demo obj = new Outer();
		obj.m1();
	}
}

