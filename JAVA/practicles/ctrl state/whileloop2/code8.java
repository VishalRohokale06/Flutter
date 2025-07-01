class Demo{
        public static void main(String[] args){
                int num=256985;
                int product=1;
                while(num>0){
                int digit=num%10;
                if(digit%2==1){
                       product=product*digit;
                }
                num/=10;
        }
                System.out.println(product);
        }

}
