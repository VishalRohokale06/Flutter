interface Demo{
        void m1();
}

class Outer{
        public static void main(String[] args){

                Demo obj = () ->
                        System.out.println("In Demo"); 
                obj.m1();
        }
}
