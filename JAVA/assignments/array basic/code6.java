import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter size:");
		int size = sc.nextInt();
		char[] cha=new char[size]; 

		for(int i=0;i<size;i++){
			cha[i]=sc.next().CharAt(0);
		}
		for(int i=0;i<size;i++){
			System.out.print(cha[i]+",");
		}

	}
}



/* for(int i=0;i<size;i++){
                        num[i] = sc.nextInt();
                }

                for(int i=0;i<size;i++){
                        System.out.print(num[i]+",");*/
