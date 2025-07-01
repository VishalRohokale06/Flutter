import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter the size of array:");                             int size=sc.nextInt();
                System.out.println("Enter the element of array:");
                int arr[] = new int[size];                                                                                                                               for(int i=0;i<size;i++){                                                            arr[i]=sc.nextInt();                                                }                                                                                                                                                                                                                                   for(int i=0;i<size;i++){
			int count=0;
                           while(arr[i]!=0){
	                         arr[i]=arr[i]/10;
                                 count++;
                                    }
                System.out.print(count);
		if(i!=size){
		System.out.print(", ");
		}
		}
	}
}


                               		
