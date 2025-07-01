class Demo{
        //void fun(int x,int y){
         //       System.out.println("In int-int");
        //}
        void fun(int x,float y){
                System.out.println("In int-float");
        }
        void fun(float x,int y){
                System.out.println("In float-int");
        }
	void fun(float x,float y){
                System.out.println("In float-float");
        }
        public static void main(String[] args){
                Demo obj = new Demo();
                obj.fun(10,20);
		//obj.fun(10,10.10f);
		//obj.fun(10,10);
		//obj.fun(10.10f,10);
		//obj.fun('A',33.0f);

        }
}
