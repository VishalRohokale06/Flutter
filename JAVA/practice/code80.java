class OrderDelayedException extends RuntimeException{
	OrderDelayedException(String str){
		super(str);
	}
}
class Zomato{
	boolean rainStatus = true;
	boolean rainCheck(){
		if(rainStatus == true)
			return rainStatus;
		else
			return rainStatus;
	}
	void order(String food){
		boolean val = rainCheck();

		if(val==true)
			throw new OrderDelayedException("Order canceled due to heavy rainFall");
		System.out.println("Preparing order"+food);
	}
}
 
class User{
	public static void main(String[] args){
		Zomato obj = new Zomato();
		obj.order("Biryani");
	}
}
