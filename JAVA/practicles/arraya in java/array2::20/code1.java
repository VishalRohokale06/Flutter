import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("Enter size =");
                int size = sc.nextInt();
                int num[] = new int[size];
		int count=0;

                for(int i=0;i<size;i++){
                        num[i] = sc.nextInt();
                }

                for(int i=0;i<size;i++){
                        if(num[i]%2==0){
				count++;
			}
		}
		System.out.println("Count of even element is :"+count);
        }
}
