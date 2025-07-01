class C2W{
        public static void main(String[]args){
                int num1 = 26;
                int num2 = 4;

                int num3 = num1<<num2;
                int num4 = num1>>num2;
                System.out.println(num3);
                System.out.println(num4);

		//for crosscheck
		int num5 = 0b0000000110100000;
		int num6 = 0b0000000000000001;
		System.out.println(num5);
                System.out.println(num6);
}

}
/*binary of 26 = 0001 1010
/*num3 after leftshift by 4 = 00000001 10100000
/*num3 after rightshift by 4 =00000000 00000001
 */
