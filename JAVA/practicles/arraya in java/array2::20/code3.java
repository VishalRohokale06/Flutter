import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

		char[] vowels = {'a','e','i','o','u','A','E','I','O','U'};

		int size = sc.nextInt();
		char arr[] = new char[size];

		for(int i=0;i<size;i++){
			arr[i]=sc.next().charAt(0);
		}
		for(int i=0;i<size;i++){
			for(int j=0;j<vowels.length;j++){
				if(arr[i]==vowels[j]){
					System.out.println(arr[i]+"found at index "+i);
				}
			}
		}
	}
}

               
