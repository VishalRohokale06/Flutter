class Demo{
	public static void main(String[] args){

		int arr[]= {1,4,5,6,11,9,10};
		int pro=1;

		for(int i=0;i<arr.length;i++){
			if(arr[i]%2==0 || arr[i]%3==0){
				System.out.print("");
			}
			else{
				pro*=arr[i];
			}
		}
		System.out.print(pro);
	}
}
