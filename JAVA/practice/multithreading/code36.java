import java.util.concurrent.*;

class ThreadTask implements Runnable{
	int num=0;
	ThreadTask(int num){
		this.num=num;
	}

	public void run(){
		System.out.println(Thread.currentThread().getName()+"start-"+num);
		fun();
		System.out.println(Thread.currentThread().getName()+"end-"+num);
	}

	void fun(){
		try{
			Thread.sleep(2000);
		}catch(Exception e){
		}
	}
}

class ThreadPoolDemo{
	public static void main(String[] args){

		ExecutorService threadPool = Executors.newFixedThreadPool(1);

		for(int i=1;i<=2;i++){
			ThreadTask task = new ThreadTask(i);
			threadPool.execute(task);
		}
		threadPool.shutdown();
	}
}


/*
 pool-1-thread-1start-1
pool-1-thread-2start-2
pool-1-thread-3start-3
pool-1-thread-4start-4
pool-1-thread-5start-5
pool-1-thread-1end-1
pool-1-thread-3end-3
pool-1-thread-2end-2
pool-1-thread-4end-4
pool-1-thread-5end-5
*/
