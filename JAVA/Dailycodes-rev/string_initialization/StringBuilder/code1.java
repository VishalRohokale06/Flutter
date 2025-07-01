class StringBufferDemo{
	public static void main(String[] args){
		StringBuffer sb = new StringBuffer();
		System.out.println();
		System.out.println(System.identityHashCode(sb));
		System.out.println(sb.capacity());
	}
}
