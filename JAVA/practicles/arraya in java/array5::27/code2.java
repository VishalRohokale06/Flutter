import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter size of array:");
                int size = sc.nextInt();
                System.out.println("Enter the elements of the array:");
                int arr[] = new int[size];
                int osum=0;
		int esum=0;

                for(int i=0;i<size;i++){
                        arr[i]=sc.nextInt();
                }

                for(int i=1;i<size;i++){
                        if(arr[i]%2==1){
                                osum+=arr[i];
                        }
		}
		System.out.println("odd sum ="+osum);

		for(int i=1;i<size;i++){
                        if(arr[i]%2==0){
                        esum+=arr[i];
                        }
                }
		System.out.println("even sum ="+esum);
	}
}
