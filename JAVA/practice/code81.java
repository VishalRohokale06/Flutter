class OrderDelayedException extends Exception{
	OrderDelayedException(String str){
		super(str);
	}
}

class Zomato{
	boolean rainStatus = true;
	boolean rainCheck(){
		if(rainStatus==true)
			return rainStatus;
		else
			return rainStatus;
	}
	void Order(String food){
		if(rainCheck() ==true)
			throw new OrderDelayedException("Order is cancled to heavy rainfall");
		System.out.println("Preparing Order :"+food);
	}
}

class User{
	public static void main(String[] args){
		Zomato obj = new Zomato();
		obj.Order("Biryani");
	}
}
