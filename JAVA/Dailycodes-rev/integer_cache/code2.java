//INTEGER CACHE RANGE -128 to 127


class JVMInternal{
	public static void main(String[] args){
	int a = 128;
	int b = 128;

	System.out.println(System.identityHashCode(a));
	System.out.println(System.identityHashCode(b));
	}
}
