import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("Enter the no. of emp: ");
                int empcount = sc.nextInt();
                int[] ages = new int[empcount];
		String[] names = new String[empcount];

                System.out.println("Enter the names of employess");
                for(int i=0;i<empcount;i++){
                        System.out.print("Employee" + (i+1) + ";");
                        names[i]=sc.next();
                }            


		System.out.println("Enter the ages of employess");
                for(int i=0;i<empcount;i++){
                        System.out.print("Employee" + (i+1) + ";");
                        ages[i]=sc.nextInt();
                }

                System.out.println("Ages of employees:");
                for(int i=0;i<empcount;i++){
                        System.out.println("Employee"+(i+1)+":"+names[i]);
			System.out.println("Employee"+(i+1)+":"+ages[i]);
                }
        }
}
