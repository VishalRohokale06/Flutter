import java.util.*;

class Demo{
	public static void main(String[] args){

		int arr1[]={45,67,97,87,90,80};
		int arr2[]={15,97,67,80,90,10};

		for(int i=0;i<arr1.length;i++){
			for(int j=0;j<arr2.length;j++){
				if(arr1[i]==arr2[j]){
					System.out.print(arr1[i]+" , ");
				}
			}
		}
	}
}
