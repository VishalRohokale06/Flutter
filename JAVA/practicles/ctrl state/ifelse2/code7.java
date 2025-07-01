class price{
	public static void main(String[] args){
		int sp = 1000;
		int cp = 1000;

		int p = sp - cp;
		int l = cp - sp;

		if(sp>cp){
			System.out.println("profit of"+p);
		}
		else if(cp>sp){
			System.out.println("loss of" +l);
		}
		else if(sp==cp){
			 System.out.println("no profit no loss");
		}

	}
}
