import java.util.*;
class SpaceDemo{
        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows :");
                int row=sc.nextInt();
                int ch1=64+row;
                int ch2=96+row;

                for(int i=1;i<=row;i++){

                        for(int j=row;j>i;j--){


                               System.out.print((char)ch2 +"\t");
                               ch2++;
                               ch1++;
                        }

                        for(int j=1;j<=i;j++){

                                System.out.print((char)ch1 +"\t");

                        ch1++;
                        ch2++;
                        }



                        System.out.println();
                }
        }
}
