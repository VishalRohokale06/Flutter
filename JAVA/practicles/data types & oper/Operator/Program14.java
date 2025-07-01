class Learn{
	public static void main(String[]args){
		int x = 10;
		int y = 5;
		
		//arithmetic
		System.out.println(x+y);
		System.out.println(x-y);
		System.out.println(x*y);
		System.out.println(x/y);
		System.out.println(x%y);

		//Bitwise
		System.out.println(x&y);
		System.out.println(x|y);
		System.out.println(x^y);
		System.out.println(~x);
		int z = 0b11111111111111111111111111110101;
		System.out.println(z);
		System.out.println(x>>1);
		System.out.println(x<<2);

		//assignment
		System.out.println(x+=y);
		System.out.println(x-=y);
		System.out.println(x*=y);
		System.out.println(x/=y);
		System.out.println(x%=y);

		//unary
		System.out.println(+y);		
		System.out.println(-y);
		System.out.println(++y);
		System.out.println(--y);

		//Logical
		boolean u = true;
		boolean v = false;

		System.out.println(u&&v);
		System.out.println(u||v);
		System.out.println(!v);
		
		//Relational
		System.out.println(x=y);
		System.out.println(x!=y);
		System.out.println(x>y);
		System.out.println(x>=y);
		System.out.println(x<y);
		System.out.println(x<=y);


		System.out.println(1+1);
		System.out.println((1+1));

/*15,5,50,2,0,0,15,15,-11,-11,5,40,15,10,50,10
0
5
-5
6
5
false
true
true
5
false
false
true
false,
true

*/		
	}
}
