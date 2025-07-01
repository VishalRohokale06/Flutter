import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter the size of the array:");
                int size = sc.nextInt();
                System.out.println("Enter the elements of the array:");
                int arr[] = new int[size];
		int vcount = 0;
		int ccount = 0;
		char vowels[] = {'a','e','i','o','u','A','E','I','O','U'};

                for(int i=0;i<size;i++){
                        arr[i]=sc.next().charAt(0);
                }
                //System.out.println("Count of vowels:");
                for(int i=0;i<size;i++){
			int flag=0;
			for(int j=0;j<vowels.length;j++){
			if(arr[i]==vowels[j]){
				flag=1;
			}
			}
			if (flag==1){
				vcount++;
			}
			else{
				ccount++;
			}

		}
		

				System.out.println("Vowels:"+vcount);
				System.out.println("Consts:"+ccount);
	}
}
