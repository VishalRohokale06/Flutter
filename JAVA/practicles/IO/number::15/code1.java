import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Input=");
		int Input=sc.nextInt();


		for(int i=1;i<=Input;i++){
		if(Input%i==0){
			System.out.print(i+",");
		}
		else{
		}
		}
		System.out.println();
	
	}

}
