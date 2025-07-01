import java.util.*;

class Demo{
	public static void main(String[] args){

		int a[]={5,10,15,20,25,30,35};
		int b[]={4,8,12,16,20};

		int a1 = a.length;

		int b1 = b.length;

		int c1 = a1 + b1;
		int c[] = new int[c1];

		for(int i=0;i<a1;i++){
			c[i]=a[i];
		}
		for(int i=0;i<b1;i++){
                        c[a1 + i]=b[i];
                }

		for(int i=0;i<c1;i++){
              		System.out.print(c[i]+",");
		}
	}
}

