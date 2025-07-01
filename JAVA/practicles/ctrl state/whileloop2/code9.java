class Demo{
        public static void main(String[] args){
                int num=2469185;
                int sum=0;
                while(num>0){
                int digit=num%10;
                if(digit%2==1){
                       sum=sum+digit*digit;

                }
                num/=10;
        }
                System.out.println(sum);
        }

}
