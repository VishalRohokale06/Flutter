class Demo{
	public static void main(String[] args){

		int arr[] = {5,7,9,11,15,19,90};

		for(int i=0;i<arr.length;i++){
			if(arr[i]%2==0  || arr[i]%3==0){
				System.out.println();
			}
			else{
				System.out.println(arr[i]);
			}
		}
	}
}
