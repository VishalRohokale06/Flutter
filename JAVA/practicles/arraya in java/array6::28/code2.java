import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter the size of the array:");
                int size = sc.nextInt();
                System.out.println("Enter the elements of the array:");
                int arr[] = new int[size];
                int count = 0;
		int sum=0;

                for(int i=0;i<size;i++){
                        arr[i]=sc.nextInt();
                }

                for(int i=0;i<size;i++){
			int flag=0;
			for(int j=2;j<arr[i];j++){
				if(arr[i]%j==0){
					flag=1;
				}
			}
			if(flag==0){
				sum+=arr[i];
				count++;
			}

		}
		System.out.println("sum ="+sum+" count = "+count);

	}
}



