class Demo{
        public static void main(String[] args){
                long num=436780521l;

                        System.out.print("digits  divisble by 2 or 3 are :");
                while(num>0){
                long digit=num%10;
                if(digit%2==0 || digit%3==0){
                       System.out.print(digit +" ");
                }

                num/=10;
        }
        }
}
