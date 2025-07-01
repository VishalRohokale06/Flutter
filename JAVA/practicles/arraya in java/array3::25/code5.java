class Demo{
	public static void main(String[] args){
		int arr[]={-2,5,-6,7,-3,8};

		for(int i=0;i<arr.length;i++){
			if(arr[i]<0){
				System.out.println(arr[i]*arr[i]);
			}
			else{
				System.out.println(arr[i]);
			}
		}
	}
}
