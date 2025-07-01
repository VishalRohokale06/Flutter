class FunClass{
        void fun(){
                System.out.println("In fun");
        }
        void gun(){
                System.out.println("In gun");
        }
}

class Demo extends Thread{
	public void run(){
                System.out.println("In run-Demo");
                System.out.println(Thread.currentThread().getName());
        }
}

class ThreadDemo extends FunClass implements Runnable{
        public void run(){
                System.out.println("In run-ThreadDemo");
                System.out.println(Thread.currentThread().getName());
        }
}

class Client{
        public static void main(String[] args){
                ThreadDemo obj = new ThreadDemo();
		obj.fun();
                Thread t1 = new Thread(obj);
                t1.start();

		Demo t2 = new Demo();
		t2.start();
                System.out.println(Thread.currentThread().getName());
        }
}
