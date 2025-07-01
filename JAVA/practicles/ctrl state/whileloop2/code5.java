class Demo{
        public static void main(String[] args){
                int num=216985;
                while(num>0){
                long digit=num%10;
                if(digit%2==0){
                       System.out.print(digit*digit*digit +" ");
                }

                num/=10;
        }
        }
}
