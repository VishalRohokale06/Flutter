import java.util.*;
class Demo{
	public static void main(String args[]){

		int arr[]={10,20,30,40};
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter sum:\t");
		int sum= Integer.parseInt(sc.nextLine());

		Map<Integer, Integer> map = new HashMap();

		boolean found = false;
		for(int i=0;i<arr.length;i++){
			int complement = sum - arr[i];
				if(map.containesKey(complement)){
					System.out.println(map.get(complement)+" "+i);
					found=true;
					break;
				}
				map.put(arr[i],i);
			}
		//	if(found) break;
		}
}
