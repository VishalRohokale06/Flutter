class Demo{
        Demo run(){
                System.out.println("In run");
                return new Demo();
        }

        public static void main(String[] args){
                Demo obj = new Demo();
                System.out.println(obj.run());
        }
}
