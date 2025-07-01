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

                //ExecutorService
		ThreadPoolExecutor threadPool = (ThreadPoolExecutor)Executors.newCachedThreadPool();

                for(int i=1;i<=2;i++){
                        ThreadTask task = new ThreadTask(i);
                        threadPool.execute(task);
                }
                threadPool.shutdown();
        }
}
