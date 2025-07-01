import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
		int arr[]={11,6,8,9,5,8,7,8,6};
		int size=arr.length;
                int key = sc.nextInt();
		int count=0;

                for(int i=0;i<size;i++){
                        if(arr[i]==key){
				count++;
			}

                }
		if(count>2){
			for(int i=0;i<size;i++){
				if(arr[i]==key){
					arr[i]=key*key*key;
				}
			
			System.out.print(arr[i]+",");
		}
		}
	
		else if(count==0){
			System.out.println("Element Not Found.");
		}
	}
}
