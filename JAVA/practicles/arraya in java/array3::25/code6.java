class Demo{
	public static void main(String[] args){
		char arr[] = {'a','b','c','y','x','o','p'};
		char vowel[]={'a','e','i','o','u'};
		//int flag=0;

		for(int i=0;i<arr.length;i++){
		        int flag=0;
			for(int j=0;j<vowel.length;j++){
		//int flag=0;
			if(arr[i]==vowel[j]){
				flag=1;
				//System.out.println(arr[i]);
				}
			}
			if(flag==0){

				System.out.print(arr[i]+"   ");
			}
		}
	}
}
