import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("Size :");
		int size=sc.nextInt();
		System.out.println("element :");
		char arr[] = new char[size];
		char a=0;
		char b=0;
		char rev[] = new char[size];

		for(int i=0;i<size;i++){
			arr[i] = sc.next().charAt(0);
		}
		System.out.println();

		for(int j=0;j<size;j++){
                        if(j%2==0){
				System.out.print(arr[j]+"  ");
			}
		}
		System.out.println();
 
		for(int k=size-1;k>=0;k--){
			if(k%2==1){
				System.out.print(arr[k]+"  ");
			}
		}
			//System.out.println("befor revers:"+a+",");
			//System.out.println("after revers:"+b+",");
	}
}




