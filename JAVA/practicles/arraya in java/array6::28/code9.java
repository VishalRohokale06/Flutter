import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter size of array:");
                int size = sc.nextInt();
                System.out.println("Enter the elements of the array:");
                int arr[] = new int[size];
                int count=0;

                for(int i=0;i<size;i++){
                        arr[i]=sc.nextInt();
                }

                for(int i=0;i<size;i++){
			int rev=0;
			int temp=arr[i];
			while(temp>0){
				rev=rev*10+temp%10;
				temp=temp/10;
			}
		if(rev==arr[i]){
			count++;
		}
		}
		System.out.print(count);
	}
}
