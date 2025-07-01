import java.util.*;

class Demo{
	public static void main(String[] args){

		int arr[]={4,5,7,9,10};

		for(int i=0;i<arr.length;i++){
			if(arr[i]%2==0 || arr[i]%3==0){
				System.out.println(arr[i]);
			}
		}
	}
}
