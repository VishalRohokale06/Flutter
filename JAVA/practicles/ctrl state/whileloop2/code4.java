class Demo{
        public static void main(String[] args){
                int num=256985;
                while(num>0){
                int digit=num%10;
                if(digit%2==1){
                       System.out.print(digit*digit +" ");
                }

                num/=10;
        }
        }
}
