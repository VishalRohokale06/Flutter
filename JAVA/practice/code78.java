class Demo{
	public static void main(String[] rg){
		System.out.println("Start");
		int arr[] = new int[]{10,20,30,40,50};

		int i=0;
		for(;i<arr.length;i++){
			System.out.println(arr[i]);
		}
		try{
			System.out.println(arr[i]);
		}catch(Exception e){
			System.out.println(e);
		}

		System.out.println("End");
	}
}
