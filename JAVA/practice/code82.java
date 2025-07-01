class OrderDelayedException extends Exception{
	OrderDelayedException(String str){
		super(str);
	}
}

class Zomato{
	boolean rainStatus = true;
	boolean rainCheck(){
		if(rainStatus==true){
			return rainStatus;
		}else{
			return rainStatus;
		}
	}
	void Order(String food)throws OrderDelayedException{
		boolean val = rainCheck();
		if(val==true)
			throw new OrderDelayedException("Order is cancelled due to heavy rainfall");
		System.out.println("Preparing order:"+food);
	}
}

class User{
	public static void main(String[] args){
		Zomato obj = new Zomato();
		try{
			obj.Order("Biryani");
		}catch(OrderDelayedException ode){
			System.out.println(ode.getMessage());
		}
	}
}
