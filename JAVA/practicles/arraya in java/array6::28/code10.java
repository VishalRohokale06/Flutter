import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter size of the array:");
                int size = sc.nextInt();
                System.out.println("Enter elements of the array:");
                int arr[] = new int[size];
                int max1=arr[0];
                int max2=arr[0];
		int max3=arr[0];

                for(int i=0;i<size;i++){
                        arr[i]=sc.nextInt();
                }

                for(int i=0;i<size;i++){
                        if(max1<arr[i]){
                                max1=arr[i];
                        }
                
		}
		//System.out.println(max1);
                for(int i=1;i<size;i++){
                        if(arr[i]<max1 && max2<arr[i]){
                                max2=arr[i];
                        }

                
		}
		//System.out.println(max2);
		for(int i=1;i<size;i++){
                        if(arr[i]<max2 && max3<arr[i]){
                                max3=arr[i];
                        }                                                                                                                                               }
                System.out.println(max3);

        }
}
